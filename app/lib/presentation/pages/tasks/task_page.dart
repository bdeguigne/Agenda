import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  final Function() onSignOutPressed;

  const TaskPage({
    Key key,
    @required this.onSignOutPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text("Task"),
        ),
        ElevatedButton(
          onPressed: () => onSignOutPressed(),
          child: const Text("Sign out"),
        ),
      ],
    );
  }
}
