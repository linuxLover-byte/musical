import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Musical());
}

class Musical extends StatelessWidget {
  const Musical({super.key});

  @override
  Widget build(BuildContext context) {
    void play_audio(int num) {
      Audio.load('assets/note$num.wav')
        ..play()
        ..dispose();
    }

    Expanded buildKey({required Color color, required int audio}) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            color: color,
            child: TextButton(
              onPressed: () {
                play_audio(audio);
              },
              child: const Text(
                'Play Me 1',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(color: Colors.red, audio: 1),
              buildKey(color: Colors.green, audio: 2),
              buildKey(color: Colors.purple, audio: 3),
              buildKey(color: Colors.pink, audio: 4),
              buildKey(color: Colors.orange, audio: 5),
              buildKey(color: Colors.blueGrey, audio: 6),
              buildKey(color: Colors.blue, audio: 7),
            ],
          ),
        ),
      ),
    );
  }
}
