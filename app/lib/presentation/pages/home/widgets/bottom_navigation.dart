import 'package:flutter/material.dart';
import 'package:agenda/presentation/custom_icons.dart';

class BottomNavigation extends StatefulWidget {
  final Function() onTasksPageSelected;
  final Function() onCalendarPageSelected;

  const BottomNavigation({
    Key key,
    @required this.onTasksPageSelected,
    @required this.onCalendarPageSelected,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

enum NavigationValue {
  tasks,
  calendar,
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.onTasksPageSelected();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (NavigationValue.values[index] == NavigationValue.tasks) {
      widget.onTasksPageSelected();
    } else {
      widget.onCalendarPageSelected();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.task),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.calendar),
          label: 'School',
        ),
      ],
    );
  }
}
