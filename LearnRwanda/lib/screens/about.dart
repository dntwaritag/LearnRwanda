import 'package:flutter/material.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            showSidebar(context);
          }, // Add functionality for menu icon if needed
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LearnRwanda Section
            AboutSection(
              imagePath: 'assets/photo2.png', // Replace with your asset path
              title: 'LearnRwanda\nE-Learning App',
              description:
                  'Our mission is to make education accessible, affordable, and effective for everyone. With expertly curated courses.',
            ),
            SizedBox(height: 16),

            AboutSection(
              imagePath: 'assets/photo1.png', // Replace with your asset path
              description:
                  'Our platform is designed to empower learners of all ages and backgrounds by offering flexible, interactive courses across a wide range of subjects',
            ),
            SizedBox(height: 32),

            // Meet The Team Section
            Text(
              'Meet The Team',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TeamMember(
              imagePath: 'assets/denys.png', // Replace with your asset path
              name: 'Denys Ntwaritaganzwa',
              role: 'CEO/Owner',
            ),
            SizedBox(height: 16),
            TeamMember(
              imagePath: 'assets/henriette.png', // Replace with your asset path
              name: 'Henriete',
              role: 'Accountant', // Replace with actual role if needed
            ),
          ],
        ),
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  AboutSection(
      {required this.imagePath, this.title = '', required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title.isNotEmpty)
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TeamMember extends StatelessWidget {
  final String imagePath;
  final String name;
  final String role;

  TeamMember({required this.imagePath, required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              role,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    );
  }
}

// Method to show the sidebar as a modal
void showSidebar(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: MediaQuery.of(context).size.width *
              0.5, // 50% of the screen width
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                    'assets/avatar2.png'), // Replace with actual profile image path
              ),
              SizedBox(height: 16),
              Text(
                "Marco Sardido",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("About Us"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/about');
                },
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("My Courses"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.explore),
                title: Text("Explore Courses"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("My Account"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/account');
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Address"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/address');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.report_problem),
                title: Text("Report Problem"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text("Help"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Center(
                  child: Text(
                    "Marco Sardido | 131-4",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

