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
      body: Center(child: card.getCard()),
    );
  }
}