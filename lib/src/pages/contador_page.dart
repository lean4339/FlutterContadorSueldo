import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';

class contadorPage extends StatefulWidget {
  @override
  createState() {
    return _contadorPageState();
  }
}

class _contadorPageState extends State<contadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  int _sueldo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Llega a tu sueldo!!!"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Numero de clicks",
              style: _estiloTexto,
            ),
            Text(
              "$_conteo",
              style: _estiloTexto,
            ),
            Text(
              "tu sueldo",
              style: _estiloTexto,
            ),
            Text(
              "$_sueldo",
              style: _estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {});
              _conteo++;
              _sueldo += 100;
            }),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _conteo--;
                _sueldo -= 100;
              });
            }),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () {
              setState(() {
                _sueldo = 0;
              });
            })
      ],
    );
  }
}
