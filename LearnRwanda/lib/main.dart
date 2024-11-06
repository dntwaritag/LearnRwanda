// main.dart
import 'package:flutter/material.dart';
import 'pages/package:learnrwanda_app/SplashScreen.dart';
import 'pages/package:learnrwanda_app/SplashScreen1.dart';
import 'pages/package:learnrwanda_app/SplashScreen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnRwanda App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Set LearnRwandaSplashScreen as the initial route
      initialRoute: '/',
      routes: {
        '/': (context) => LearnRwandaSplashScreen(),
        '/learningJourney': (context) => LearningJourneyScreen(),
        '/establishConnections': (context) => EstablishConnectionsScreen(),
      },
    );
  }
}
