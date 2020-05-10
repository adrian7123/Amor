import 'dart:math';
import 'package:amor_app/components/animated_background.dart';
import 'package:amor_app/components/frases.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Random rand = Random();

  List<String> frases = Frases.frases;

 

  @override
  Widget build(BuildContext context) {
    // Sorteia um número de 0 a o tamanho da lista
    int sorteio = rand.nextInt(frases.length);

    // Pega a frase cujo index foi sorteado
    String frase = frases[sorteio];

    return Scaffold(
      body: Stack(children: <Widget>[
        // Realiza a Animação Atras do texto
        AnimatedBackgroundWidget(),

        // Texto
        Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
          child: Text(
            frase,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}