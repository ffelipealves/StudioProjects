import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MarimbaApp());
}

class MarimbaApp extends StatelessWidget {
  const MarimbaApp({Key? key}) : super(key: key);

  void tocarSom(int audio){

    final player = AudioCache();
    player.play('nota$audio.wav');

  }

  Expanded criarBotao(Color cor, int notaAudio){
    return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(notaAudio);
        },
        child: const Text(''),
        style: TextButton.styleFrom(backgroundColor: cor),
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
            children: [
              criarBotao(Colors.green,1),
              criarBotao(Colors.yellow,2),
              criarBotao(Colors.blue,3),
              criarBotao(Colors.red,4),
              criarBotao(Colors.grey,5),
              criarBotao(Colors.purple,6),
              criarBotao(Colors.brown,7),
            ],
          ),
        ),
      ),
    );
  }
}
