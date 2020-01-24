import 'package:flutter/material.dart';
import 'package:registro_basico/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Componentes App",
      debugShowCheckedModeBanner: false,
      //Ruta inicial de la app
      initialRoute: '/',
      //Rutas que tomará la app
      routes: getApplicationRoutes(),
    );
  }
}