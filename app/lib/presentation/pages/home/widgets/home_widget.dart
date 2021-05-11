import 'package:agenda/presentation/pages/home/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final Function() onSignOutPressed;
  // final Function() onProfilePressed;

  const HomeWidget({
    Key key,
    @required this.onSignOutPressed,
    // @required this.onProfilePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
