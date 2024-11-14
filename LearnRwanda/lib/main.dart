import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${DateTime.now().hour}:${DateTime.now().minute.toString().padLeft(2, '0')} pm",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.signal_cellular_alt, color: Colors.black),
                SizedBox(width: 5),
                Icon(Icons.wifi, color: Colors.black),
                SizedBox(width: 5),
                Icon(Icons.battery_full, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/About1.png', 
              height: 100,
            ),
            SizedBox(height: 20),
            Text("Team Members", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            TeamMember(
              name: "CEO/Owner Denis Ntwaritaganzwa",
              imagePath: 'assets/Denis.png', 
            ),
            TeamMember(
              name: "Senior Software Engineer Vanessa UMUGWANEZA",
              imagePath: 'assets/vanessa.png', 
            ),
            TeamMember(
              name: "Graphic Designer Ange Mukundente",
              imagePath: 'assets/Ange.png',
            ),
            TeamMember(
              name: "System Analyst Henriette Cyiza",
              imagePath: 'assets/Henriette.png',
            ),
            TeamMember(
              name: "IT Specialist Magot",
              imagePath: 'assets/Magot.png',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class TeamMember extends StatelessWidget {
  final String name;
  final String imagePath;

  TeamMember({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(imagePath),
          onBackgroundImageError: (exception, stackTrace) {
            print('Error loading image: $imagePath');
          },
        ),
        SizedBox(height: 10),
        Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 30),
      ],
    );
  }
}
