import 'package:agenda/domain/auth/user.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final Function() onSignOutPressed;
  final User user;

  const HomeWidget({
    Key key,
    @required this.onSignOutPressed,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (user != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.email.getOrCrash()),
            const SizedBox(height: 12),
            Text("Role : ${user.role.getOrCrash()}"),
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
    return Container();
  }
}
