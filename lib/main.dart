import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Musical(),
    ),
  );
}

class Musical extends StatelessWidget {
  const Musical({Key? key}) : super(key: key);
  void ST(int soundN) {
    final player = AudioCache();
    player.play('note$soundN.wav');
  }
  Expanded PS({required Color color, required int sound}) {
   return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          ST(sound);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PS(
                color: Colors.red, sound:1
              ),
              PS(
                  color: Colors.white, sound:2
              ),
              PS(
                  color: Colors.blue, sound:3
              ),
              PS(
                  color: Colors.white, sound:4
              ),
              PS(
                  color: Colors.black, sound:5
              ),
              PS(
                  color: Colors.pink, sound:6
              ),
              PS(
                  color: Colors.purple, sound:7
              ),

            ],
          ),
        ),
      ),
    );
  }
}






