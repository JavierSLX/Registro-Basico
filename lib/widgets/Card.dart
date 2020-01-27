import 'package:flutter/material.dart';

class CardDart
{
  Widget getCard({String nombre, String telefono, String email, String imagen})
  {
    Widget card = Container(
      child: Row(
        children: <Widget>[
          Container(
            child: FadeInImage(
              image: NetworkImage(imagen),
              placeholder: AssetImage("assets/loading_2.gif"),
              fadeInDuration: Duration(milliseconds: 200),
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.all(10),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Text("Nombre: $nombre"),
                padding: EdgeInsets.all(5),
              ),
              Container(
                child: Text("Teléfono: $telefono"),
                padding: EdgeInsets.all(5),
              ),
              Container(
                child: Text("Email: $email"),
                padding: EdgeInsets.all(5),
              )
            ],
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
          borderRadius: BorderRadius.circular(10),
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