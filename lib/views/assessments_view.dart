import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/widgets/profile_avatar_button.dart';

class AssessmentsView extends StatelessWidget {
  const AssessmentsView({Key? key}) : super(key: key);

  static const List<_AssessmentItem> _upcoming = <_AssessmentItem>[
    _AssessmentItem(
      module: 'Programming',
      title: 'Coursework Report',
      due: 'Due 3rd August 2026',
    ),
    _AssessmentItem(
      module: 'Operating Systems and Internetworking',
      title: 'Final Exam',
      due: 'Due 28th July 2026',
    ),
  ];

  static const List<_AssessmentItem> _missed = <_AssessmentItem>[
    _AssessmentItem(
      module: 'Software Engineering, Theory and Practice',
      title: 'Coursework',
      due: 'Missed 18 July 2026',
    ),
    _AssessmentItem(
      module: 'Database Systems Development',
      title: 'SQL Practical Test',
      due: 'Missed 20 April 2026',
    ),
  ];

  static const List<_AssessmentItem> _completed = <_AssessmentItem>[
    _AssessmentItem(
      module: 'Data Analytics and Visualisations',
      title: 'Dashboard Build Task',
      due: 'Completed 08 July 2026',
    ),
    _AssessmentItem(
      module: 'Programming',
      title: 'Algorithm Worksheet',
      due: 'Completed 11 January 2026',
    ),
  ];

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
                'Assessments',
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
                'Assessments',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              const SizedBox(height: 24),
              _AssessmentSection(
                title: 'Upcoming',
                items: _upcoming,
                icon: Icons.schedule,
              ),
              const SizedBox(height: 16),
              _AssessmentSection(
                title: 'Missed',
                items: _missed,
                icon: Icons.warning_amber_rounded,
              ),
              const SizedBox(height: 16),
              _AssessmentSection(
                title: 'Completed',
                items: _completed,
                icon: Icons.check_circle_outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AssessmentSection extends StatelessWidget {
  const _AssessmentSection({
    required this.title,
    required this.items,
    required this.icon,
  });

  final String title;
  final List<_AssessmentItem> items;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: moodleWhite,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: moodleBorder),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: moodlePurple),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: moodlePurple,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            ...items
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: moodleGrayBg,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: moodleBorder),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: moodleTextDark,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item.module,
                            style: const TextStyle(
                              fontSize: 13,
                              color: moodleTextMuted,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item.due,
                            style: const TextStyle(
                              fontSize: 13,
                              color: moodleTextDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}

class _AssessmentItem {
  const _AssessmentItem({
    required this.module,
    required this.title,
    required this.due,
  });

  final String module;
  final String title;
  final String due;
}
