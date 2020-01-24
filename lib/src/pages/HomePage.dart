import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:registro_basico/src/utils/icons_string_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Agrega un titulo centrado
      appBar: AppBar(
        title: Text("Registro básico"),
        centerTitle: true,
      ),
      body: _listaContenidos(),
    );
  }

  //Crea la lista de contenidos
  Widget _listaContenidos()
  {
    //Crea una instancia del menu
    _Menu menu = new _Menu();

    //Crea un widget relacionado a un futuro para poder resolverlo de manera interactiva
    return FutureBuilder(
      future: menu.cargarData(),
      initialData: [],
      builder: ((BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){

        //Regresa la lista con los elementos obtenidos del futuro
        return ListView(children: _listaItems(snapshot.data, context),);
      }),
    );
  }

  //Crea la lista de los elementos
  List<Widget> _listaItems(List<dynamic> data, BuildContext context)
  {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widget = ListTile(
        title: Text(opt["texto"]),
        leading: getIcon(opt["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: null,
      );

      //Agrega los widgets a la lista de opciones
      opciones..add(widget)..add(Divider());
    });

    return opciones;
  }
}

//Clase que contiene el menu
class _Menu
{
  List<dynamic> opciones = [];

  _Menu()
  {
    cargarData();
  }

  //Carga el JSON de la carpeta data y regresa en un futuro la lista
  Future<List<dynamic>> cargarData() async
  {
    //Resuelve el futuro para obtener los datos del json
    String data = await rootBundle.loadString("data/menu.json");
    Map dataMap = json.decode(data);

    opciones = dataMap["rutas"];

    //Regresa la lista de opciones
    return opciones;
  }
}