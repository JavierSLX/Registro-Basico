import 'package:flutter/material.dart';
import 'package:registro_basico/widgets/Card.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {

    CardDart card = new CardDart();

    return Scaffold(
      appBar: AppBar(
        title: Text("Album de fotos"),
        centerTitle: true,
      ),
      body: Center(child: card.getCard(
        nombre: "Javier Serrano Lule",
        telefono: "4612578406",
        email: "jserranolule@gmail.com",
        imagen: "https://avatars3.githubusercontent.com/u/21322683?s=460&v=4"
      )),
    );
  }
}