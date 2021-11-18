import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/contador_page.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(context){

    return MaterialApp(
    home:Center(
      child: contadorPage(),
    ),
    debugShowCheckedModeBanner: false,
    
    );
  }
}