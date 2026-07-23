import 'package:flutter/material.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/widgets/profile_avatar_button.dart';
import 'package:moodle/constants.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({Key? key}) : super(key: key);

  static const List<_CourseModule> _modules = <_CourseModule>[
    _CourseModule(
      code: 'COMP201',
      title: 'Operating Systems and Internetworking',
      semester: 'Semester 2',
      credits: '20 credits',
      status: 'In progress',
    ),
    _CourseModule(
      code: 'COMP204',
      title: 'Programming',
      semester: 'Semester 2',
      credits: '20 credits',
      status: 'In progress',
    ),
    _CourseModule(
      code: 'COMP210',
      title: 'Database Systems',
      semester: 'Semester 1',
      credits: '20 credits',
      status: 'Completed',
    ),
    _CourseModule(
      code: 'COMP217',
      title: 'Web Development',
      semester: 'Semester 1',
      credits: '20 credits',
      status: 'Completed',
    ),
    _CourseModule(
      code: 'COMP230',
      title: 'Software Engineering',
      semester: 'Semester 2',
      credits: '20 credits',
      status: 'In progress',
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
                'My courses',
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
                'My courses',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'A dummy overview of the modules you are currently taking.',
                style: TextStyle(fontSize: 16, color: moodleTextDark),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: _modules
                    .map(
                      (module) => SizedBox(
                        width: 340,
                        child: Card(
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
                                    Container(
                                      width: 44,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: moodlePurple,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        module.code.substring(0, 4),
                                        style: const TextStyle(
                                          color: moodleWhite,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            module.title,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: moodleTextDark,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            module.code,
                                            style: const TextStyle(
                                              fontSize: 13,
                                              color: moodleTextMuted,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                _CourseMetaRow(
                                  icon: Icons.event_note_outlined,
                                  text: module.semester,
                                ),
                                const SizedBox(height: 8),
                                _CourseMetaRow(
                                  icon: Icons.school_outlined,
                                  text: module.credits,
                                ),
                                const SizedBox(height: 8),
                                _CourseMetaRow(
                                  icon: Icons.track_changes_outlined,
                                  text: module.status,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CourseModule {
  const _CourseModule({
    required this.code,
    required this.title,
    required this.semester,
    required this.credits,
    required this.status,
  });

  final String code;
  final String title;
  final String semester;
  final String credits;
  final String status;
}

class _CourseMetaRow extends StatelessWidget {
  const _CourseMetaRow({
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: moodlePurple),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: moodleTextDark,
            ),
          ),
        ),
      ],
    );
  }
}
