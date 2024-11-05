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
            Text("9:40 pm", style: TextStyle(color: Colors.black)),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'LearnRwanda/lib/Assets/About1.png' , 
              height: 100,
            ),
            SizedBox(height: 20),
            Text("Team Members", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            TeamMember(
              name: "CEO/Owner Denis Ntwaritaganzwa",
              imagePath: 'LearnRwanda/lib/Assets/Denis.png', 
            ),
            TeamMember(
              name: "Senior Software Engineer  Vanessa UMUGWANEZA",
              imagePath: 'LearnRwanda/lib/Assets/vanessa.png', 
            ),
            TeamMember(
              name: "Graphic Designer Ange Mukundente",
              imagePath: 'LearnRwanda/lib/Assets/Ange.png', // Add your designer image here
            ),
            TeamMember(
              name: "System Analyst Henriette Cyiza",
              imagePath: 'LearnRwanda/lib/Assets/Henriette.png', // Add your analyst image here
            ),
            TeamMember(
              name: "IT Specialist Magot",
              imagePath: 'LearnRwanda/lib/Assets/Magot.png', // Add your IT specialist image here
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
        ),
        SizedBox(height: 10),
        Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 30),
      ],
    );
  }
}
