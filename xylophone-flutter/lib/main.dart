import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded buildkey({Color color , int noteNumber}){
      return Expanded(
        child: FlatButton(
          onPressed: (){
            final player = AudioCache();
            player.play('note$noteNumber.wav');
          },
          color: color,
          child: Text('Note $noteNumber'),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, noteNumber: 1),
              buildkey(color: Colors.orange, noteNumber: 2),
              buildkey(color: Colors.yellow, noteNumber: 3),
              buildkey(color: Colors.green, noteNumber: 4),
              buildkey(color: Colors.blue, noteNumber: 5),
              buildkey(color: Colors.indigo, noteNumber: 6),
              buildkey(color: Colors.deepPurple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
