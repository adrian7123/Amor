import 'package:amor/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mor",
      routes: {'/': (context) => HomeScreen()},
    );
  }
}

void main() => runApp(MyApp());
