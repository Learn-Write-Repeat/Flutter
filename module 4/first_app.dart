dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2
  english_words: ^4.0.0   

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
final _suggestions = <WordPair>[];                 
  final _biggerFont = const TextStyle(fontSize: 18); 

  @override                                  
  Widget build(BuildContext context) {
     return Scaffold (                    
       appBar: AppBar(
         title: Text('Startup Name Generator'),
       ),
       body: _buildSuggestions(),
     );
  }  


Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
           itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index = i ~/ 2;
        if (index >= _suggestions.length) {
                   _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }                                     
}
