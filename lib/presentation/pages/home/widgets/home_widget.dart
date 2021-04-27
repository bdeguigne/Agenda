import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final Function() onSignOutPressed;

  const HomeWidget({
    Key key,
    @required this.onSignOutPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Home page"),
          const SizedBox(height: 12),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              onPressed: () => onSignOutPressed(),
              child: const Text("Sign Out"),
            ),
          ),
        ],
      ),
    );
  }
}
