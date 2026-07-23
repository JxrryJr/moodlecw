import 'package:flutter/material.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/constants.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

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
                'Dashboard',
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
          const SizedBox(width: 8),
          const CircleAvatar(
            radius: 18,
            backgroundColor: moodleGrayBg,
            foregroundColor: moodlePurple,
            child: Text(
              'YH',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          const SizedBox(width: 16),
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
                'Dashboard',
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
                      const Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 44,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search courses, activities, etc.',
                            prefixIcon: const Icon(Icons.search_outlined),
                            filled: true,
                            fillColor: moodleGrayBg,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: moodleBorder),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Timeline',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                  isExpanded: true,
                                  items: const [],
                                  value: null,
                                  onChanged: null,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                  isExpanded: true,
                                  items: const [],
                                  value: null,
                                  onChanged: null,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      SizedBox(
                        height: 44,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search by activity type or name',
                            prefixIcon: const Icon(Icons.search_outlined),
                            filled: true,
                            fillColor: moodleGrayBg,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: moodleBorder),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Upcoming dates',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 44,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'No upcoming events',
                            filled: true,
                            fillColor: moodleGrayBg,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: moodleBorder),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Card(
                color: moodleWhite,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: moodleBorder),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Latest announcements',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '(No announcements have been posted yet.)',
                        style: TextStyle(fontSize: 14, color: moodleTextMuted),
                      ),
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
                    children: [
                      const Text(
                        'Calendar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const _MonthCalendarCard(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Card(
                color: moodleWhite,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: moodleBorder),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Timeline',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      SizedBox(height: 12),
                      Column(
                        children: const [
                          _TimelineEntry(
                            moduleName: 'Operating systems and Internetowrking',
                            detail: 'Missed deadline',
                          ),
                          SizedBox(height: 12),
                          _TimelineEntry(
                            moduleName: 'Programming assignment',
                            detail: 'Missed deadline',
                          ),
                          SizedBox(height: 12),
                          _TimelineEntry(
                            moduleName: 'Programming coursework',
                            detail: 'Due 29th July',
                          ),
                        ],
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

class _TimelineEntry extends StatelessWidget {
  const _TimelineEntry({
    required this.moduleName,
    required this.detail,
  });

  final String moduleName;
  final String detail;

  @override
  Widget build(BuildContext context) {
    final isMissedDeadline = detail.toLowerCase().contains('missed deadline');

    return Container(
      decoration: BoxDecoration(
        color: moodleGrayBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: moodleBorder),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          if (isMissedDeadline) ...[
            const Icon(
              Icons.warning_amber_rounded,
              color: Colors.redAccent,
            ),
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  moduleName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: moodleTextDark,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  detail,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.redAccent,
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

class _MonthCalendarCard extends StatefulWidget {
  const _MonthCalendarCard();

  @override
  State<_MonthCalendarCard> createState() => _MonthCalendarCardState();
}

class _MonthCalendarCardState extends State<_MonthCalendarCard> {
  late DateTime _month;

  static const List<String> _weekdayLabels = <String>[
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  static const List<String> _monthNames = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _month = DateTime(now.year, now.month, 1);
  }

  void _changeMonth(int delta) {
    setState(() {
      _month = DateTime(_month.year, _month.month + delta, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final firstWeekday = _month.weekday;
    final daysInMonth = DateTime(_month.year, _month.month + 1, 0).day;
    final leadingEmptyCells = firstWeekday - DateTime.monday;
    final totalCells = leadingEmptyCells + daysInMonth;
    final trailingEmptyCells = (7 - (totalCells % 7)) % 7;
    final monthLabel = '${_monthNames[_month.month - 1]} ${_month.year}';

    return Container(
      decoration: BoxDecoration(
        color: moodleGrayBg,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              IconButton(
                tooltip: 'Previous month',
                icon: const Icon(Icons.chevron_left),
                onPressed: () => _changeMonth(-1),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    monthLabel,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: moodlePurple,
                    ),
                  ),
                ),
              ),
              IconButton(
                tooltip: 'Next month',
                icon: const Icon(Icons.chevron_right),
                onPressed: () => _changeMonth(1),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: _weekdayLabels
                .map(
                  (label) => Expanded(
                    child: Center(
                      child: Text(
                        label,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: moodleTextMuted,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: totalCells + trailingEmptyCells,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              childAspectRatio: 1.15,
            ),
            itemBuilder: (context, index) {
              final dayNumber = index - leadingEmptyCells + 1;
              if (index < leadingEmptyCells || dayNumber > daysInMonth) {
                return const SizedBox.shrink();
              }

              final isToday = DateTime.now().year == _month.year &&
                  DateTime.now().month == _month.month &&
                  DateTime.now().day == dayNumber;

              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isToday ? moodlePurple : moodleWhite,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: moodleBorder),
                ),
                child: Text(
                  '$dayNumber',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: isToday ? moodleWhite : moodleTextDark,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
