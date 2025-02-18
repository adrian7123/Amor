import 'package:amor/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mor",
      routes: {'/': (context) => HomePage()},
    );
  }
}

void main() => runApp(MyApp());
