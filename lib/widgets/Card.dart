import 'package:flutter/material.dart';
import 'package:registro_basico/model/Usuario.dart';

class CardDart
{
  Widget getCard(Usuario usuario)
  {
    Widget card = Container(
      child: Row(
        children: <Widget>[
          Container(
            //Si hay un enlace en la imagen la carga y si no, carga una por default
            child: usuario.imagen != null ? FadeInImage(
              image: NetworkImage(usuario.imagen),
              placeholder: AssetImage("assets/loading_2.gif"),
              fadeInDuration: Duration(milliseconds: 200),
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ) : Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/user.png"),
                  fit: BoxFit.fill
                ),
                shape: BoxShape.rectangle
              ),
            ),
            padding: EdgeInsets.all(10),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Text("Nombre: ${usuario.nombre}"),
                padding: EdgeInsets.all(5),
              ),
              Container(
                child: Text("Teléfono: ${usuario.telefono}"),
                padding: EdgeInsets.all(5),
              ),
              Container(
                child: Text("Email: ${usuario.correo}", softWrap: true,),
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