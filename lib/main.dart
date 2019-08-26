import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
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
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StateWidget();
  }
}

class StateWidget extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }

}