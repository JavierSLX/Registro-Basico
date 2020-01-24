import 'package:flutter/material.dart';
import 'package:registro_basico/src/pages/HomePage.dart';
import 'package:registro_basico/src/pages/PhotoPage.dart';
import 'package:registro_basico/src/pages/RegisterPage.dart';

//Función que contiene las rutas de las paginas
Map<String, WidgetBuilder> getApplicationRoutes()
{
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'register': (BuildContext context) => RegisterPage(),
    'photos': (BuildContext context) => PhotoPage()
  };
}