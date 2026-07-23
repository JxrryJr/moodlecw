import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/widgets/profile_avatar_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: moodleWhite,
        foregroundColor: moodleTextDark,
        elevation: 1,
        titleSpacing: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: 32,
                height: 32,
                child: Image.asset(
                  'images/moodle_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          const ProfileAvatarButton(),
        ],
      ),
      drawer: const NavDrawer(),
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              const SizedBox(height: 24),
              Card(
                color: moodleWhite,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: moodleBorder),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 34,
                            backgroundColor: moodleGrayBg,
                            foregroundColor: moodlePurple,
                            child: Text(
                              'MN',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Michael Njini',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: moodleTextDark,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Student profile',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: moodleTextMuted,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      _ProfileDetailRow(
                          label: 'Email', value: 'up2273239@myport.ac.uk'),
                      _ProfileDetailRow(
                          label: 'Course', value: 'BSc Computer Science'),
                      _ProfileDetailRow(
                          label: 'Year of study', value: 'Year 2'),
                      _ProfileDetailRow(
                          label: 'Student ID', value: 'up2273239'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Card(
                color: moodleWhite,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: moodleBorder),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Page info',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'This is a static profile page for student information.',
                        style: TextStyle(fontSize: 14, color: moodleTextDark),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileDetailRow extends StatelessWidget {
  const _ProfileDetailRow({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: moodleTextMuted,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                color: moodleTextDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
