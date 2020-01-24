import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Agrega un titulo centrado
      appBar: AppBar(
        title: Text("Registro básico"),
        centerTitle: true,
      ),
      body: Text("Lista"),
    );
  }
}