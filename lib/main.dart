import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  clickBtn({int position, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$position.wav');
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
              clickBtn(position: 1, color: Colors.red),
              clickBtn(position: 2, color: Colors.orange),
              clickBtn(position: 3, color: Colors.yellow),
              clickBtn(position: 4, color: Colors.green),
              clickBtn(position: 5, color: Colors.cyan),
              clickBtn(position: 6, color: Colors.blue[900]),
              clickBtn(position: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
