import 'package:flutter/material.dart';
import 'package:your_app_name/pages/Splashscreen.dart';
import 'package:your_app_name/pages/Splashscreen1.dart';
import 'package:your_app_name/pages/Splashscreen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnRwanda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(), // Set the first screen to load here
      routes: {
        '/Splashscreen': (context) => Splashscreen(),
        '/Splashscreen1': (context) => Splashscreen1(),
        '/Splashscreen2': (context) => Splashscreen2(),
      },
    );
  }
}
