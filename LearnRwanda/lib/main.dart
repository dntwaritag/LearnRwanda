import 'package:flutter/material.dart';

void main() {
  runApp(LearnRwandaApp());
}

class LearnRwandaApp extends StatelessWidget {
  const LearnRwandaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnRwanda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hello, You!"),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // replace with your user profile image URL
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search your course...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.filter_list),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enrolled Courses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              CourseCard(
                courseName: 'Mobile App Development',
                lessons: '5/7 Lessons',
                imageUrl: 'https://via.placeholder.com/150', // replace with course image URL
              ),
              const SizedBox(height: 20),
              const Text(
                'Explore your course',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CourseCategoryGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String courseName;
  final String lessons;
  final String imageUrl;

  const CourseCard({super.key, 
    required this.courseName,
    required this.lessons,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(lessons),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Continue'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseCategoryGrid extends StatelessWidget {
  const CourseCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        CategoryCard(courseName: 'Cloud', lessons: '43 lessons'),
        CategoryCard(courseName: 'HTML5', lessons: '28 lessons'),
        CategoryCard(courseName: 'User Interfaces', lessons: '15 lessons'),
        CategoryCard(courseName: 'Python', lessons: '30 lessons'),
        CategoryCard(courseName: 'JavaScript', lessons: '40 lessons'),
        CategoryCard(courseName: 'CSS', lessons: '27 lessons'),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String courseName;
  final String lessons;

  const CategoryCard({super.key, 
    required this.courseName,
    required this.lessons,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.book, size: 40), // Customize the icon or add images
            const SizedBox(height: 10),
            Text(
              courseName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(lessons),
          ],
        ),
      ),
    );
  }
}
