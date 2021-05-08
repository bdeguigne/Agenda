import 'package:agenda/presentation/pages/home/left_panel/left_tab_bar.dart';
import 'package:flutter/material.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      child: Container(
        color: Colors.white,
        width: 250,
        child: const LeftTabBar(),
      ),
    );
  }
}
