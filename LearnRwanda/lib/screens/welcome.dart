import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Learn Rwanda',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Your Passion Is Waiting for your courage to catchup',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the Second Screen
                      Navigator.pushNamed(context, '/info');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.blueAccent, // Dodger blue background
                      foregroundColor: Colors.white, // White text color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12), // Rounded corners
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8), // Increase height
                    ),
                    child: const Text('Next'),
                  )),
            ],
          ),
        ));
  }
}
