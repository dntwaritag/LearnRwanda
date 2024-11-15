import 'package:flutter/material.dart';

class information extends StatelessWidget {
  const information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // image section
          Image.asset(
            'assets/learn5.jpg', // Replace with your image path
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),

          // title text
          const SizedBox(
            height: 10,
          ),
          const Text(
            'your Learning Journey is the Reward',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          // subtitle text
          Text(
            "Open your Eyes , open your mind and seek first to understand",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 20,
          ),

          // Dot Indicators

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildDot(isActive: true),
              _buildDot(isActive: false),
              _buildDot(isActive: false),
            ],
          ),

          SizedBox(
            width: 300,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/establish');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Dodger blue background
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )),
          ),
        ],
      )),
    );
  }
}

// Dot widget
Widget _buildDot({required bool isActive}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    width: 10,
    height: 10,
    decoration: BoxDecoration(
      color: isActive ? Colors.blue : Colors.grey[300],
      shape: BoxShape.circle,
    ),
  );
}

