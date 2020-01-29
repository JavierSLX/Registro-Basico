import 'package:flutter/material.dart';
import 'package:registro_basico/widgets/Card.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {

    List<int> imagenes = [1, 2, 3, 4, 5];

    return Scaffold(
      appBar: AppBar(
        title: Text("Album de fotos"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: imagenes.length,
        itemBuilder: (BuildContext context, int index){
          //Regresa una imagen sacada de internet
          return FadeInImage(
            placeholder: AssetImage("assets/loading_2.gif"),
            image: NetworkImage("https://picsum.photos/500/300/?image=${imagenes[index]}"),
          );
        },
      )
    );
  }
}