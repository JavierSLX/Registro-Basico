import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      //Configura la localizacion para el lenguaje (configurar antes en el archivo pubspec.yaml)
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      //Agrega los lenguajes soportados por la app
      supportedLocales: [
        const Locale("en", "US"),
        const Locale("es", "ES")
      ],
    );
  }
}