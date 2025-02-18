import 'dart:math';

import 'package:amor/components/animated_background.dart';
import 'package:amor/shared/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random rand = Random();

  List<String> frases = Frases.frases;

  @override
  Widget build(BuildContext context) {
    // Sorteia um número de 0 a o tamanho da lista
    int sorteio = rand.nextInt(frases.length);

    // Pega a frase cujo index foi sorteado
    String frase = frases[sorteio];

    return GestureDetector(
      onTap: () => setState(() {}),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            // Realiza a Animação Atrás do texto
            AnimatedBackgroundWidget(),

            // Texto
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  frase,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
