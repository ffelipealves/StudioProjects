import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: const Text('Eu Sou Rico'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    'https://enemaneiras.com.br/wp-content/uploads/2021/09/imagem-png-com-transparencia.png'),
              ),
              Image(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/17/19/da/1719da5ca7ddc1853bc74fa184ea8193.png'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
