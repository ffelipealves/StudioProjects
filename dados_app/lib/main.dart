import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: const Text('Jogo de dados'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: const JogoDados(),
    ),
  ));
}

class JogoDados extends StatefulWidget {
  const JogoDados({Key? key}) : super(key: key);

  @override
  State<JogoDados> createState() => _JogoDadosState();
}

class _JogoDadosState extends State<JogoDados> {
  int dadoEsquerda = Random().nextInt(6)+1;
  int dadoDireita = Random().nextInt(6)+1;

  //PROCEDIMENTO FEITO PARA JOGAR OS DADOS
  void _jogaDado() {
    setState(() {
      dadoEsquerda = Random().nextInt(6)+1;
      dadoDireita = Random().nextInt(6)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                _jogaDado();
              },
              child: Image.asset('assets/dado$dadoEsquerda.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  _jogaDado();
                },
                child: Image.asset('assets/dado$dadoDireita.png')),
          ),
        ],
      ),
    );
  }
}


