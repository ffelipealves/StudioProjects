import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xff332B25),
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: Text('Vidente Virtual'),
        centerTitle: true,
      ),
      body: VidenteVirtual(),
    ),
  ));
}

class VidenteVirtual extends StatefulWidget {
  const VidenteVirtual({Key? key}) : super(key: key);

  @override
  State<VidenteVirtual> createState() => _VidenteVirtualState();
}

class _VidenteVirtualState extends State<VidenteVirtual> {

  int Visao=Random().nextInt(6)+1;

  void AlteraVisao(){
    setState((){
      Visao=Random().nextInt(6)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: (){
        AlteraVisao();
      },child: Image.asset('imagens/vidente$Visao.png')),
    );
  }
}

