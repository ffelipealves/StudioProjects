import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: const Center(child: Text('Container 1')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: const Center(child: Text('Container 2')),
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 150,
                color: Colors.black,
                child: const Center(child: Text('Desafio Aula 15',style: TextStyle(color: Colors.white),)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: const Center(child: Text('Container 3')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: const Center(child: Text('Container 4')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
