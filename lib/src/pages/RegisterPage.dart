import 'package:flutter/material.dart';
import 'package:registro_basico/model/Usuario.dart';
import 'package:registro_basico/widgets/Dialog.dart';
import 'package:registro_basico/widgets/Input.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  int count = 0;
  String telefono = "";
  String nombre = "";
  String correo = "";
  String imagen = "";
  bool isImage = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Registro de Usuario"),
        centerTitle: true,
      ),
      //Agrega un widget padding para darle espacio a los elementos y dentro una columna con los widgets
      body: Padding(
        padding: EdgeInsets.all(15),
        //Agrega un scroll a la columna de elementos
        child: getForm(context),
      )
    );
  }

  //Regresa el formulario de la pagina
  Widget getForm(BuildContext context)
  {
    //Instancia el input
    InputDart input = InputDart();

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //Crea un TextField personalizado para el nombre
          input.getTextField(
            isFocus: true, 
            hint: "Coloque su nombre",
            etiqueta: "Nombre",
            callback: (texto) => nombre = texto
          ),
          SizedBox(height: 10,),
          //Crea un TextField personalizado para el telefono
          input.getTextField(
            counter: count,
            hint: "Coloque su número telefónico",
            etiqueta: "Teléfono",
            maximo: 10,
            callback: (texto){
              //Actualiza la página para actualizar el contador
              setState(() {
                count = texto != null ? texto.length : 0;
                telefono = texto;
              });
            }
          ),
          SizedBox(height: 10,),
          //Crea un TextField personalizado para el correo
          input.getTextField(
            hint: "Coloque su correo electrónico",
            etiqueta: "Email",
            callback: (texto) => correo = texto
          ),
          SizedBox(height: 10,),
          //Crea un TextField personalizado para la imagen
          input.getTextField(
            enabled: isImage,
            hint: "Coloque la dirección de su imagen",
            etiqueta: "Imagen",
            callback: (texto) => imagen = texto
          ),
          SizedBox(height: 10,),
          SwitchListTile(
            title: Text("¿Tiene una imagen?"),
            value: isImage,
            onChanged: (valor){
              //Redibuja el control para ver que cambia
              setState(() {
                //Bloquea la caja de texto de la imagen si esta en false
                isImage = valor;
              });
            },
          ),
          SizedBox(height: 10,),
          //Boton de guardado
          RaisedButton(
            child: Text("Guardar"),
            color: Colors.blue,
            textColor: Colors.white,
            //Bordes redondeados
            shape: StadiumBorder(),
            //Evento del boton
            onPressed: () async {

              Usuario usuario = await getUsuario(context);

              print(usuario);
            },
          )
        ],
      ),
    );
  }

  //Metodo que hace las validaciones y crea un objeto con los elementos que contiene
  Future<Usuario> getUsuario(BuildContext context)
  {
    Usuario usuario;

    if(nombre.length == 0 || telefono.length == 0 || correo.length == 0 || imagen.length == 0)
    {
      mostrarAlerta(context, false, "Coloque todos los datos");
      return null;
    }
    else
    {
      usuario = new Usuario(nombre, telefono, correo, imagen);

      //Regresa el futuro del usuario
      return Future.delayed(Duration(seconds: 5), () {
        mostrarAlerta(context, true, "Guardado correcto");

        return usuario;
      });
    }
      
  }

  void mostrarAlerta(BuildContext context, bool isCorrect, String message)
  {
    DialogWidget dialog = new DialogWidget(context);

    //Muestra el dialogo
    showDialog(
      context: context,
      //No se cierra al darle click fuera del dialogo
      barrierDismissible: false,
      builder: (context){
        return dialog.getAlertDialogCorrect(isCorrect, message);
      }
    );
  }
}