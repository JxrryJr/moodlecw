import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name ?? '/';

    return Drawer(
      backgroundColor: const Color(0xFF5D2D5F), // Deep purple side panel
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.speed_outlined, color: Colors.white),
              title: const Text(
                'Dashboard',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              selected: currentRoute == '/',
              selectedTileColor: Colors.white24,
              onTap: () {
                Navigator.pop(context); // Close drawer
                if (currentRoute != '/') {
                  Navigator.pushReplacementNamed(context, '/');
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month_outlined, color: Colors.white),
              title: const Text(
                'Calendar',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                // Disabled link for student brief template
              },
            ),
            ListTile(
              leading: const Icon(Icons.insert_drive_file_outlined, color: Colors.white),
              title: const Text(
                'Private files',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                // Disabled link for student brief template
              },
            ),
            ListTile(
              leading: const Icon(Icons.school_outlined, color: Colors.white),
              title: const Text(
                'My courses',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              selected: currentRoute == '/courses',
              selectedTileColor: Colors.white24,
              onTap: () {
                Navigator.pop(context); // Close drawer
                if (currentRoute != '/courses') {
                  Navigator.pushReplacementNamed(context, '/courses');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
