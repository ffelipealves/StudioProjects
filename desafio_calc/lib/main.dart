import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String Visor = '';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text('Calculadora'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            margin: const EdgeInsets.all(15),
            width: 400,
            height: 120,
            child: Text(
              '$Visor',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: Column(
                children: [

                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState((){
                                Visor='Limpar Tela';
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            child: const Text(
                              'C',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState((){
                                Visor='DELETAR';
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            child: const Text(
                              'DEL',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),

                          ),
                        ),

                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState((){
                                Visor='PORCENTAGEM';
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            child: const Text(
                              '%',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState((){
                                Visor='DIVISAO';
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            child: const Text(
                              '÷',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              mostraNumeroVisor(7);
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            child: const Text(
                              '7',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              mostraNumeroVisor(8);
                            },
                            child: const Text(
                              '8',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              mostraNumeroVisor(9);
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            child: const Text(
                              '9',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState((){
                                Visor='MULTIPLICACAO';
                              });
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            child: const Text(
                              '*',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              mostraNumeroVisor(4);
                            },
                            child: const Text(
                              '4',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              mostraNumeroVisor(5);
                            },
                            child: const Text(
                              '5',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              mostraNumeroVisor(6);
                            },
                            child: const Text(
                              '6',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              setState((){
                                Visor='SOMA';
                              });
                            },
                            child: const Text(
                              '+',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              mostraNumeroVisor(1);
                            },
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              mostraNumeroVisor(2);
                            },
                            child: const Text(
                              '2',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              mostraNumeroVisor(3);
                            },
                            child: const Text(
                              '3',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              setState((){
                                Visor='SUBTRACAO';
                              });
                            },
                            child: const Text(
                              '-',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              mostraNumeroVisor(0);
                            },
                            child: const Text(
                              '0',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              setState((){
                                Visor='PONTO';
                              });
                            },
                            child: const Text(
                              '.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              setState((){
                                Visor='IGUAL';
                              });
                            },
                            child: const Text(
                              '=',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }

  void mostraNumeroVisor(int num){
    setState(() {
      Visor='Número $num';
    });
  }

}

