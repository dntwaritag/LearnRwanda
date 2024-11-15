LearnRwanda Mobile Application (Frontend implementation)
LearnRwanda is a mobile platform aimed at enhancing access to educational resources for students, teachers, and parents in Rwanda. This README covers the frontend aspects of the project, including the UI design, core screens, and interactive components.

Table of Contents
Project Purpose
Key Features
Tech Stack
Project Architecture
Components and Code Structure
Setup and Installation
Usage
Challenges and Solutions
Future Enhancements
Contributors
License
Project Purpose
The LearnRwanda app’s frontend is designed to:

Offer a user-friendly and accessible interface for exploring educational resources.
Enable seamless navigation and interaction, supporting learning in offline and online modes.
Provide a responsive layout that adapts to various device sizes.
Key Features
Sign-In Interface: Provides user authentication screens for email, Google, and Facebook login options.
Offline-Ready UI: Allows users to download lessons for offline access, with an intuitive interface for managing downloads.
Interactive Modules: Engaging quizzes and exercises for students to test their knowledge.
Course Catalog and Filtering: Easy-to-browse and filterable course catalog, designed to make finding relevant content simple.
Progress Tracking UI: Visual indicators for lesson completion and performance.
Tech Stack
Framework: Flutter
Language: Dart (for building frontend components)
Design: Custom components styled for mobile screens, leveraging Flutter’s layout widgets.
Project Architecture
The frontend follows an MVVM (Model-View-ViewModel) architecture pattern for clear separation between the UI and business logic, making the codebase easier to scale and maintain.

Model: Represents the UI state and data structure for components (e.g., courses, lesson content).
View: Contains the UI screens and layout, displaying data to users and handling user inputs.
ViewModel: Manages the UI logic, controls data flow between views, and handles user interactions.
Directory Structure
lua
Copy code
|-- lib/
|   |-- models/        # Data models for app resources and lesson data
|   |-- views/         # UI screens, including sign-in, course catalog, lessons
|   |-- viewmodels/    # Logic controllers for managing data and UI state
|   |-- services/      # Local storage and caching logic for offline readiness
|   |-- utils/         # UI constants, themes, and reusable functions
|-- assets/            # Images, icons, fonts, and other resources
|-- README.md          # Project documentation
Components and Code Structure
1. Authentication Screens
Location: lib/views/authentication/
Purpose: Provides the UI for email-password login and Google/Facebook social login. Customizable input fields and buttons offer a cohesive experience.
2. Course Catalog UI
Location: lib/views/course_catalog.dart
Purpose: Displays courses in a scrollable format, with filtering options by category, subject, and level.
3. Lesson and Module UI
Location: lib/views/lesson_view.dart
Purpose: UI for displaying lesson content, including interactive modules, quizzes, and media.
4. Offline Access Interface
Location: lib/views/offline_access.dart
Purpose: Allows users to manage downloaded lessons for offline access, with an easy-to-use interface for tracking offline availability.
5. Progress Tracking UI
Location: lib/views/progress_view.dart
Purpose: Shows lesson completion status and overall learning progress in a visually engaging way.
Setup and Installation
Prerequisites

Flutter SDK installed (Download Flutter)
Installation

bash
Copy code
git clone https://github.com/yourusername/LearnRwanda-Frontend.git
cd LearnRwanda-Frontend
flutter pub get
Run the App

bash
Copy code
flutter run
Usage
Sign In: Access the app through the authentication screens.
Browse Courses: Navigate through the course catalog and filter options.
Download Lessons: Select lessons for offline access in areas with limited internet.
Track Progress: View your progress across lessons and modules.
Challenges and Solutions
Offline Functionality for UI: Optimizing the user experience for offline scenarios was a priority, achieved by designing a simplified download and cache UI.
Responsive Design: Ensuring the app layout is responsive on various mobile devices was addressed through flexible layout widgets in Flutter.
Future Enhancements
Interactive Animations: Add animations for lesson transitions and UI interactions to enhance engagement.
UI Personalization: Enable users to customize their app theme and layout preferences.
Accessibility Improvements: Continue aligning with accessibility standards (WCAG) for inclusive use.
Contributors
Ange Mukundente
Denis Ntwaritaganzwa
Henriette Cyiza
Magot
Vanessa
License
This project is licensed under the MIT License - see the LICENSE file for details.
