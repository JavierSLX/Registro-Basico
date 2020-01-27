import 'package:flutter/material.dart';

class CardDart
{
  Widget getCard()
  {
    Widget card = Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Widget que permite mostrar una imagen en lo que se carga otra
          FadeInImage(
            image: NetworkImage("https://miro.medium.com/max/4320/0*QNdQhs_T3ffa6B0m.jpeg"),
            placeholder: AssetImage("assets/loading_2.gif"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            //Da un margen al contenedor
            padding: EdgeInsets.all(10),
            child: Text("Solo es un ejemplo"),
          )
        ],
      ),
    );

    //Coloca la tarjeta en un contenedor
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        //Borde del contenedor
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          //Simula la sombra de la elevacion
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              //Se mueve la sombra en los puntos cardinales
              offset: Offset(2, 12)
            )
          ]
        ),
        //Corta el contenido del Widget
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: card,
        ),
      ),
    );
  }
}