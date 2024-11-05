import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactInfoScreen(),
    );
  }
}

class ContactInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Action for back button
          },
        ),
        title: Text('Contact Info'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ContactCard(
              title: 'Kigali City',
              subtitle: 'KN 52 st, Nyarugenge',
              primaryLabel: 'Primary Address',
            ),
            SizedBox(height: 20),
            Text(
              'Contacts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ContactCard(
              title: '+250-7889-4519-3',
              subtitle: 'Primary Phone',
            ),
            SizedBox(height: 10),
            ContactCard(
              title: 'learnrwanda@gmail.com',
              subtitle: 'Primary Email',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for adding new contact or address
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String primaryLabel;

  ContactCard({
    required this.title,
    required this.subtitle,
    this.primaryLabel = '',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  primaryLabel.isNotEmpty ? primaryLabel : subtitle,
                  style: TextStyle(color: Colors.blue),
                ),
                TextButton(
                  onPressed: () {
                    // Action for updating contact or address
                  },
                  child: Text(
                    'Update',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
