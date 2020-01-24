import 'package:flutter/material.dart';
import 'package:registro_basico/widgets/Dialog.dart';
import 'package:registro_basico/widgets/Input.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  int count = 0;
  String telefono;
  String nombre;

  @override
  Widget build(BuildContext context) {

    //Instancia el input
    InputDart input = InputDart();

    return Scaffold(
      appBar: AppBar(
        title: Text("Registro de Usuario"),
        centerTitle: true,
      ),
      //Agrega un widget padding para darle espacio a los elementos y dentro una columna con los widgets
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            //Crea un TextField personalizado para el nombre
            input.getTextField(
              isFocus: true, 
              hint: "Coloque su nombre",
              etiqueta: "Nombre",
              ayuda: "Coloque su nombre y apellidos",
              callback: (texto){
                nombre = texto;
              }
            ),
            SizedBox(height: 20,),
            //Crea un TextField personalizado para el telefono
            input.getTextField(
              counter: count,
              hint: "Coloque su número telefónico",
              etiqueta: "Teléfono",
              ayuda: "Agregue su teléfono a 10 dígitos",
              maximo: 10,
              callback: (texto){
                setState(() {
                  count = texto != null ? texto.length : 0;
                  telefono = texto;
                });
              }
            )
          ],
        ),
      ),
    );
  }

  void mostrarAlerta(BuildContext context)
  {
    DialogWidget dialog = new DialogWidget(context);

    //Muestra el dialogo
    showDialog(
      context: context,
      //No se cierra al darle click fuera del dialogo
      barrierDismissible: false,
      builder: (context){
        return dialog.getAlertDialogCorrect(false, "Inserción correcta");
      }
    );
  }
}