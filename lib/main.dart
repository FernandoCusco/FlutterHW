import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenido',
      home: Scaffold(                                                     //widget 
        appBar: AppBar(                                                   //barra en la parte superior
          title: Text('Mi App'),
        ),        
        body: Center(
          child: Text('Bienvenido a Flutter Dart'),
        ),
      ),
    );
  }
}