import 'package:flutter/material.dart';

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int numeroDaQuestao = 0;

  List<String> perguntas = [
    'O metrô é um dos meios de transporte mais seguros do mundo',
    'A culinária brasileira é uma das melhores do mundo.',
    'Vacas podem voar, assim como peixes utilizam os pés para andar.'
  ];
  List<Widget> marcadorDePontos = [];
  List<bool> respostas = [true, true, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              perguntas[numeroDaQuestao],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple, primary: Colors.white),
              onPressed: () {
                bool respostaCerta = respostas[numeroDaQuestao];
                if(respostaCerta==true){
                  print('o usuario acertou');
                }else{
                  print('o usuario errou');
                }
                setState(() {
                  if (numeroDaQuestao == 2) {
                    numeroDaQuestao = 0;
                  } else {
                    numeroDaQuestao++;
                  }
                  marcadorDePontos.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
              },
              child: Text(
                'Verdadeiro',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.shade800, primary: Colors.white),
              onPressed: () {
                setState(() {
                  bool respostaCerta = respostas[numeroDaQuestao];
                  if(respostaCerta==false){
                    print('o usuario acertou');
                  }else{
                    print('o usuario errou');
                  }
                  if (numeroDaQuestao == 2) {
                    numeroDaQuestao = 0;
                  } else {
                    numeroDaQuestao++;
                  }
                  marcadorDePontos.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
              },
              child: Text(
                'Falso',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Row(
          children: marcadorDePontos,
        )
      ],
    );
  }
}

/*
pergunta1: 'O metrô é um dos meios de transporte mais seguros do mundo', verdadeiro,
pergunta2: 'A culinária brasileira é uma das melhores do mundo.', verdadeiro,
pergunta3: 'Vacas podem voar, assim como peixes utilizam os pés para andar.', falso,
*/
