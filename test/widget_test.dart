import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:moodle/main.dart';

void main() {
  testWidgets('App renders dashboard and courses screen correctly',
      (WidgetTester tester) async {
    // Set desktop screen size
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MoodleApp());

    // Verify login page renders and enter dashboard.
    expect(find.text('Student modules: 2025/26'), findsOneWidget);
    await tester.tap(find.text('Enter Dashboard'));
    await tester.pumpAndSettle();

    // Verify that Dashboard title exists.
    expect(find.text('Dashboard'), findsNWidgets(2));

    // Open drawer
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    // Navigate to My Courses in drawer
    await tester.tap(find.text('My courses'));
    await tester.pumpAndSettle();

    // Verify Courses page contains module content
    expect(find.text('Operating Systems and Internetworking'), findsOneWidget);
    expect(find.text('Programming'), findsOneWidget);
    expect(find.text('Database Systems Development'), findsOneWidget);
    expect(find.text('Data Analytics and Visualisations'), findsOneWidget);
    expect(find.text('Software Engineering, Theory and Practice'), findsOneWidget);
  });
}
