import 'package:flutter/material.dart';

class course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            showSidebar(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/avatar2.png'), // Replace with actual avatar image path
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'You.!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search your course...",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 6),
                  IconButton(
                    icon: Icon(Icons.filter_list, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Enrolled Courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(children: [
                    Image.asset('assets/learn4.jpg',
                        width: 80), // Replace with actual course image path
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile App Development',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text('5/17 Lessons'),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Continue'),
                          ),
                        ],
                      ),
                    )
                  ])),
              SizedBox(height: 16),
              Text(
                'Explore your course',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  CourseCard(
                    title: "Cloud",
                    lessonsCompleted: 24,
                    totalLessons: 40,
                    imageUrl: 'assets/course1.png',
                  ),
                  CourseCard(
                    title: "HTML5",
                    lessonsCompleted: 12,
                    totalLessons: 25,
                    imageUrl: 'assets/course2.png',
                  ),
                  CourseCard(
                    title: "User Interface",
                    lessonsCompleted: 18,
                    totalLessons: 30,
                    imageUrl: 'assets/course3.png',
                  ),
                  CourseCard(
                    title: "Database",
                    lessonsCompleted: 9,
                    totalLessons: 20,
                    imageUrl: 'assets/course4.png',
                  ),
                  CourseCard(
                    title: "JavaScript",
                    lessonsCompleted: 20,
                    totalLessons: 40,
                    imageUrl: 'assets/course5.png',
                  ),
                  CourseCard(
                    title: "CSS3",
                    lessonsCompleted: 15,
                    totalLessons: 30,
                    imageUrl: 'assets/course6.png',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
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
}

// CourseCard widget to display individual courses
class CourseCard extends StatelessWidget {
  final String title;
  final int lessonsCompleted;
  final int totalLessons;
  final String imageUrl;

  const CourseCard({
    required this.title,
    required this.lessonsCompleted,
    required this.totalLessons,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Adjust as per your layout
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imageUrl,
              height: 80,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "$lessonsCompleted/$totalLessons Lessons",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
