import 'package:agenda/domain/auth/user.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final User user;
  final Function() onSignOutPressed;
  final Function() onCreateHomeworkPressed;

  const HomeWidget({
    Key key,
    @required this.user,
    @required this.onSignOutPressed,
    @required this.onCreateHomeworkPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (user != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("id = ${user.id.getOrCrash()}"),
            const SizedBox(height: 12),
            Text(user.email.getOrCrash()),
            const SizedBox(height: 12),
            Text("Role : ${user.role.getOrCrash()}"),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {},
              child: const Text("See homeworks (Everyone)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: () => onCreateHomeworkPressed(),
              child: const Text("Create a homework (Only teachers and admins)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: () {},
              child: const Text("Delete a homework (Only teachers and admins)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {},
              child: const Text("Only admin"),
            ),
            const SizedBox(height: 42),
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
