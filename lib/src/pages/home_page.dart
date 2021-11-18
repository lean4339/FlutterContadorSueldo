import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Numero de clicks",
              style: estiloTexto,
            ),
            Text(
              "$conteo",
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("hola mundo")},
        child: Icon(Icons.add),
      ),
    );
  }
}
