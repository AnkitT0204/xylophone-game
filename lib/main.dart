import 'package:audioplayers/audio_cache.dart';


import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound){
    final player=AudioCache();
    player.play('note$sound.wav');
  }
  Expanded buildsound({Color color ,int sound}){
   return Expanded(
      child: FlatButton(
        color:color,
        onPressed: (){
          playSound(sound);
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
            children:<Widget> [
              buildsound(color:Colors.red,sound:1),
              buildsound(color:Colors.orange,sound:2),
              buildsound(color:Colors.yellow,sound:3),
              buildsound(color:Colors.lightGreen,sound:4),
              buildsound(color:Colors.green,sound:5),
              buildsound(color:Colors.blue,sound:6),
              buildsound(color:Colors.purple,sound:7),

            ],
          ),
        ),
      ),
    );
  }
}
