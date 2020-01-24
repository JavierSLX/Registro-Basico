import 'package:flutter/material.dart';
import 'package:registro_basico/widgets/Dialog.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro de Usuario"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar alerta"),
          onPressed: () => mostrarAlerta(context),
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