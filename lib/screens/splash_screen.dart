import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_flutter_music/screens/home_screen.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple.shade900,
        scaffoldBackgroundColor: Colors.red,
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text('App IQ')),
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _textButtonWidget(noteSoundNumber: 1, color: Colors.red),
                _textButtonWidget(noteSoundNumber: 2, color: Colors.orange),
                _textButtonWidget(noteSoundNumber: 3, color: Colors.yellow),
                _textButtonWidget(noteSoundNumber: 4, color: Colors.green),
                _textButtonWidget(noteSoundNumber: 5, color: Colors.blue),
                _textButtonWidget(noteSoundNumber: 6, color: Colors.indigo),
                _textButtonWidget(
                    noteSoundNumber: 7, color: Colors.pink.shade900),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => const HomeScreen()))
                        },
                        child: Text('Back Home'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/camera')},
                        child: Text('Camera App'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Expanded _textButtonWidget(
      {int noteSoundNumber = 1, Color color = Colors.red}) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(noteSoundNumber);
          },
          child: const Text(''),
          style: TextButton.styleFrom(backgroundColor: color)),
    );
  }

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }
}
