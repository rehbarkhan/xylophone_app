import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          toneScale(Colors.red, "note1.wav"),
          toneScale(Colors.green, "note2.wav"),
          toneScale(Colors.blue, "note3.wav"),
          toneScale(Colors.purple, "note4.wav"),
          toneScale(Colors.teal, "note5.wav"),
          toneScale(Colors.orange, "note6.wav"),
          toneScale(Colors.yellow, "note7.wav"),
        ],
      )),
    );
  }

  Widget toneScale(Color scaleColor, String tone) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          final player = AudioCache();
          player.play(tone);
        },
        color: scaleColor,
      ),
    );
  }
}
