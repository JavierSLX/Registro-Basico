import 'package:flutter/material.dart';

class DialogWidget
{
  BuildContext context;

  DialogWidget(BuildContext context)
  {
    this.context = context;
  }

  //Crea un AlertDialog predefinido
  Widget getAlertDialogCorrect(bool isCorrect, String message)
  {
    return AlertDialog(
      //Coloca los border redondeados
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      //Coloca el titulo
      title: Center(child: Text(isCorrect ? "Registro correcto" : "Registro fallido"),),
      //Contenido
      content: Column(
        //Ajusta la columna a su tamaño minimo (Para evitar un dialogo enorme)
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 30,),
          Row(
            //Ajusta el tamaño de la columna ajustando solo el tamaño de su contenido
            children: <Widget>[
              Image(
                image: AssetImage(isCorrect ? "assets/correct.png" : "assets/incorrect.png"),
                height: 60,
                width: 60,
                ),
                SizedBox(width: 30,),
                Text(message),
            ],
          ),
        ],
      ),
      //Botones del dialogo
      actions: <Widget>[
        FlatButton(
          child: Text("Cancelar"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        FlatButton(
          child: Text("Aceptar"),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  }
}