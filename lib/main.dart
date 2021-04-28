import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => XylophoneApp();

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded makeButton({Color color, int songNo, String scolor}) {
    return Expanded(
      child: FlatButton(
        child: Text("$scolor"),
        onPressed: () {
          playSound(songNo);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              makeButton(color: Colors.purple, songNo: 1, scolor: "purple"),
              makeButton(color: Colors.indigo, songNo: 2, scolor: "indigo"),
              makeButton(color: Colors.blue, songNo: 3, scolor: "blue"),
              makeButton(color: Colors.green, songNo: 4, scolor: "green"),
              makeButton(color: Colors.yellow, songNo: 5, scolor: "yellow"),
              makeButton(color: Colors.orange, songNo: 6, scolor: "orange"),
              makeButton(color: Colors.red, songNo: 7, scolor: "red"),
            ],
          ),
        ),
      ),
    );
  }
}
