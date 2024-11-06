import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountScreen(),
    );
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'My Account',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150', // Replace with the profile picture URL
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Marco Sardido',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'learnrwanda@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Update Photo')),
                  TextButton(onPressed: () {}, child: const Text('Edit')),
                ],
              ),
              const Divider(),
              _buildSettingOption(context, 'General Information'),
              _buildSettingOption(context, 'Security'),
              _buildSettingOption(context, 'Payment'),
              const Divider(),
              const SizedBox(height: 10),
              _buildActionOption(context, 'Close Account', Colors.red),
              _buildActionOption(context, 'Upgrade Account', Colors.blue),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingOption(BuildContext context, String title) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // Add navigation or action here
      },
    );
  }

  Widget _buildActionOption(BuildContext context, String title, Color color) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: color),
      ),
      onTap: () {
        // Add navigation or action here
      },
    );
  }
}
