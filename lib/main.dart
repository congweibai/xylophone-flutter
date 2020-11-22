import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color keyColors}) {
    return Expanded(
      child: FlatButton(
        color: keyColors,
        onPressed: () {
          playSound(soundNumber);
        },
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
            children: [
              buildKey(soundNumber: 1, keyColors: Colors.red),
              buildKey(soundNumber: 2, keyColors: Colors.orange),
              buildKey(soundNumber: 3, keyColors: Colors.yellow),
              buildKey(soundNumber: 4, keyColors: Colors.green),
              buildKey(soundNumber: 5, keyColors: Colors.teal),
              buildKey(soundNumber: 6, keyColors: Colors.blue),
              buildKey(soundNumber: 7, keyColors: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
