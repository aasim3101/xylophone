import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color col, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(col: Colors.blue, soundNumber: 1),
              buildKey(col: Colors.indigo, soundNumber: 2),
              buildKey(col: Colors.brown, soundNumber: 3),
              buildKey(col: Colors.green, soundNumber: 4),
              buildKey(col: Colors.yellow, soundNumber: 5),
              buildKey(col: Colors.orange, soundNumber: 6),
              buildKey(col: Colors.red, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
