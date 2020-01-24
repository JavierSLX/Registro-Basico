import 'package:flutter/material.dart';

//Lista que contiene un nombre y un icono
final _icons = <String, IconData> {
  "input": Icons.account_circle,
  "list": Icons.photo
};

//Obtiene un widget de icono a partir de un nombre
Icon getIcon(String nombre)
{
  return Icon(_icons[nombre], color: Colors.blue,);
}