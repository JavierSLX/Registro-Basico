import 'package:flutter/material.dart';
import 'package:registro_basico/src/pages/HomePage.dart';

//Función que contiene las rutas de las paginas
Map<String, WidgetBuilder> getApplicationRoutes()
{
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage()
  };
}