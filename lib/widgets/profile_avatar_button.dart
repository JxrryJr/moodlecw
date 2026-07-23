import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';

class ProfileAvatarButton extends StatelessWidget {
  const ProfileAvatarButton({Key? key, this.label = 'MN'}) : super(key: key);

  final String label;

  void _openProfile(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name ?? '';
    if (currentRoute != '/profile') {
      Navigator.pushNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: () => _openProfile(context),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: moodleGrayBg,
            foregroundColor: moodlePurple,
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}