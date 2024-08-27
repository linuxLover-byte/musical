import 'package:flutter/material.dart';

import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(Musical());
}

class Musical extends StatelessWidget {
  const Musical({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.green,
                    child: TextButton(
                      onPressed: () {
                        Audio.load('assets/note1.wav')
                          ..play()
                          ..dispose();
                      },
                      child: const Text(
                        'Play Me 1',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.pink,
                    child: TextButton(
                      onPressed: () {
                        Audio.load('assets/note2.wav')
                          ..play()
                          ..dispose();
                      },
                      child: const Text(
                        'Play Me 2',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.red,
                    child: TextButton(
                      onPressed: () {
                        Audio.load('assets/note3.wav')
                          ..play()
                          ..dispose();
                      },
                      child: const Text(
                        'Play Me 3',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {
                        Audio.load('assets/note4.wav')
                          ..play()
                          ..dispose();
                      },
                      child: const Text(
                        'Play Me 4',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.amber,
                    child: TextButton(
                      onPressed: () {
                        Audio.load('assets/note5.wav')
                          ..play()
                          ..dispose();
                      },
                      child: const Text(
                        'Play Me 5',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.cyan,
                    child: TextButton(
                      onPressed: () {
                        Audio.load('assets/note6.wav')
                          ..play()
                          ..dispose();
                      },
                      child: const Text(
                        'Play Me 6',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: TextButton(
                      onPressed: () {
                        Audio.load('assets/note7.wav')
                          ..play()
                          ..dispose();
                      },
                      child: const Text(
                        'Play Me 7',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
