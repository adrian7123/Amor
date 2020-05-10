import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
import 'package:amor_app/screens/home_screen.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mor",
      routes: {
        '/':(context) => HomeScreen(),
      },
    );
  }
}
void main() => runApp(MyApp());
