import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void clickButton(int position) {
    final player = AudioCache();
    player.play('note$position.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  clickButton(1);
                },
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  clickButton(2);
                },
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  clickButton(3);
                },
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  clickButton(4);
                },
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  clickButton(5);
                },
                color: Colors.cyan,
              ),
              FlatButton(
                onPressed: () {
                  clickButton(6);
                },
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  clickButton(7);
                },
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
