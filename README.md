# Moodle Coursework App

A Flutter coursework project that recreates key Moodle screens with a consistent theme, shared navigation, and static student-focused content.

## Features

- Login page with centered logo and entry button to the dashboard
- Dashboard page with:
  - Search and timeline sections
  - Upcoming dates populated with upcoming assessments
  - Calendar month widget with previous/next month navigation
  - Latest announcements placeholder block
- Courses page with dummy module cards
- Assessments page split into:
  - Upcoming
  - Missed
  - Completed
- Profile page with static student details
- Shared drawer navigation across app pages
- Top-right profile avatar button that opens the Profile page

## App Routes

- `/login` -> Login
- `/` -> Dashboard
- `/courses` -> My Courses
- `/assessments` -> Assessments
- `/profile` -> Profile

## Project Structure

```
lib/
  main.dart
  constants.dart
  views/
    login_view.dart
    dashboard_view.dart
    courses_view.dart
    assessments_view.dart
    profile_view.dart
  widgets/
    nav_drawer.dart
    profile_avatar_button.dart
test/
  widget_test.dart
```

## Getting Started

### Prerequisites

- Flutter SDK installed
- Chrome or another supported Flutter target

### Install Dependencies

```bash
flutter pub get
```

### Run the App

```bash
flutter run -d chrome
```

## Testing

Run widget tests with:

```bash
flutter test
```

## Notes

- Current data is static and intended for coursework demonstration.
- Navigation and layout are implemented with mobile-first styling but can run on desktop web.
