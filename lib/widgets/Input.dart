import 'package:flutter/material.dart';

class InputDart
{
  Widget getTextField({bool isFocus = false, int counter = 0, String hint, String etiqueta, String ayuda, void Function(String) callback, int maximo = 0})
  {
    return TextField(
      //Se pone el foco al iniciar
      autofocus: isFocus,
      //Capitalizacion de las palabras que se colocan
      textCapitalization: TextCapitalization.words,
      //Coloca un borde, una leyenda, una sugerencia, una etiqueta, texto de ayuda, un icono al inicio y al final
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        //Iconos, contador, etiqueta, texto y ayuda
        counter: counter != 0 ? Text("Letras: $counter") : null,
        hintText: hint != null ? hint : null,
        labelText: etiqueta != null ? etiqueta : null,
        helperText: ayuda != null ? ayuda : null,
        suffix: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      //Tamaño maximo permitido de la caja
      maxLength: maximo != 0 ? maximo : null,
      //Cuando cambia el texto que contiene
      onChanged: callback,
    );
  }
}