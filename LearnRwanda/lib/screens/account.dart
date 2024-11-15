import 'package:flutter/material.dart';

class account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            showSidebar(context);
          }, // Add functionality if needed
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'assets/avatar.jpg'), // Replace with your image asset
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MarcoSardido',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'learnwanda@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {}, // Add update photo function
                              child: Text('Update Photo'),
                            ),
                            TextButton(
                              onPressed: () {}, // Add edit function
                              child: Text('Edit'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),

            // Settings section
            ListTile(
              title: Text('Settings',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text('General Information'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {}, // Add navigation or functionality here
            ),
            ListTile(
              title: Text('Security'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {}, // Add navigation or functionality here
            ),
            ListTile(
              title: Text('Payment'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {}, // Add navigation or functionality here
            ),
            SizedBox(height: 24),

            // Close and Upgrade Account options
            ListTile(
              title: Text(
                'Close Account',
                style: TextStyle(color: Colors.red),
              ),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red),
              onTap: () {}, // Add close account function
            ),
            ListTile(
              title: Text(
                'Upgrade Account',
                style: TextStyle(color: Colors.blue),
              ),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.blue),
              onTap: () {}, // Add upgrade account function
            ),
          ],
        ),
      ),
    );
  }
}



