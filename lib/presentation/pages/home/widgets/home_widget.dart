import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final Function() onSignOutPressed;

  const HomeWidget({
    Key key,
    @required this.onSignOutPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Home page"),
          ),
          ElevatedButton(
            onPressed: () => onSignOutPressed(),
            child: const Text("Sign out"),
          ),
        ],
      ),
    );
  }
}
