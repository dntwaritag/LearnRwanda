import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/information.dart';
import 'screens/login.dart';
import 'screens/connection.dart';
import 'screens/start.dart';
import 'screens/signup.dart';
import 'screens/course.dart';
import 'screens/account.dart';
import 'screens/address.dart';
import 'screens/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     
