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
      home: RandomWords(),
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
  final _sugeridas = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(                                                     //widget 
        appBar: AppBar(                                                   //barra en la parte superior
          title: Text('Mi App'),
        ),                                                              
        body: _listViewSugeridas(),
      );                                                                
  }

  Widget _listViewSugeridas(){
    return ListView.builder(
      itemBuilder: (context, i) {
        if(i >= _sugeridas.length){
          _sugeridas.addAll(generateWordPairs().take(10));
        }
        _buildRow(_sugeridas[i]);
      },
    );
  }
  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(pair.asPascalCase),
    );
  }
}
