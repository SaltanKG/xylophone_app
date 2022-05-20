import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xylophone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Xylophone());
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  AudioCache player = AudioCache();

  // final player =  AudioCache ();

  // // вызываем этот метод при нужном
  // игроке. играть ( 'взрыв.mp3' );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff283136),
        title: const Text('Flutter Xylophone'),
      ),
      body: Center(
        child: Column(
          children: [
            _buildContainer(
              tus: const Color(0xffEF443A),
              notaNumber: '1',
            ),
            _buildContainer(
              tus: const Color(0xffF99700),
              notaNumber: '2',
            ),
            _buildContainer(
              tus: const Color(0xffFFE93B),
              notaNumber: '3',
            ),
            _buildContainer(
              tus: const Color(0xff4CB050),
              notaNumber: '4',
            ),
            _buildContainer(
              tus: const Color(0xff2E968C),
              notaNumber: '5',
            ),
            _buildContainer(
              tus: const Color(0xff2996F5),
              notaNumber: '6',
            ),
            _buildContainer(
              tus: const Color(0xff9B28B1),
              notaNumber: '7',
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildContainer({Color tus, String notaNumber}) {
    return Expanded(
      child: Material(
        color: tus,
        child: InkWell(
          splashColor: Colors.white,
          onTap: () {
            player.play('musics/note_$notaNumber.wav');
          },
          // child: Container(),
        ),
      ),
    );
  }
}

//DRY code-Don't Repeat Your Self