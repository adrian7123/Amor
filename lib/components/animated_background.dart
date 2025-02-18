import 'dart:async';

import 'package:flutter/material.dart';

class _AnimatedBackgroundWidgetState extends State<AnimatedBackgroundWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  initState() {
    super.initState();

    Timer(
      Duration(milliseconds: 5300),
      () => Navigator.of(context).pushReplacementNamed('/'),
    );

    _controller = AnimationController(
      duration: Duration(milliseconds: 2500),
      vsync: this,
      value: 0.1,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceInOut,
    );

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: ScaleTransition(
              scale: _animation,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, size: 400, color: Colors.redAccent),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedBackgroundWidget extends StatefulWidget {
  const AnimatedBackgroundWidget({super.key});

  @override
  _AnimatedBackgroundWidgetState createState() =>
      _AnimatedBackgroundWidgetState();
}
