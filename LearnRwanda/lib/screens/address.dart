import 'package:flutter/material.dart';

class address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Address section
            SectionHeader(title: 'Address'),
            AddressCard(),
            SizedBox(height: 24),

            // Contacts section
            SectionHeader(title: 'Contacts'),
            ContactCard(
              title: 'Phone Number',
              subtitle: '+250-7889-4519-3',
              additionalInfo: 'You have 3 Phone Numbers',
              primaryLabel: 'Primary Phone',
              onUpdate: () {}, // Add update function
            ),
            ContactCard(
              title: 'Email',
              subtitle: 'learnrwanda@gmail.com',
              additionalInfo: 'You have 2 Phone Numbers',
              primaryLabel: 'Primary Email',
              onUpdate: () {}, // Add update function
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: Icon(Icons.add_circle_outline, color: Colors.blue),
          onPressed: () {}, // Add functionality to add new address/contact
        ),
      ],
    );
  }
}

class AddressCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You have 1 Address',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 8),
            Text(
              'Kigali City',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'KN 52 St, Nyarugenge',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {}, // Set as primary function
                  child: Text('Primary Address'),
                ),
                TextButton(
                  onPressed: () {}, // Update address function
                  child: Text('Update'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String additionalInfo;
  final String primaryLabel;
  final VoidCallback onUpdate;

  ContactCard({
    required this.title,
    required this.subtitle,
    required this.additionalInfo,
    required this.primaryLabel,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              additionalInfo,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {}, // Set as primary function
                  child: Text(primaryLabel),
                ),
                TextButton(
                  onPressed: onUpdate,
                  child: Text('Update'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
