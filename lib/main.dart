import 'package:flutter/material.dart';
import 'views/dashboard_view.dart';
import 'views/courses_view.dart';

void main() {
  runApp(const MoodleApp());
}

class MoodleApp extends StatelessWidget {
  const MoodleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moodle',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5D2D5F), // Moodle burgundy/deep purple
          primary: const Color(0xFF5D2D5F),
          secondary: const Color(0xFF4A4A4A),
          surface: const Color(0xFFF8F9FA),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/courses': (context) => const CoursesView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
