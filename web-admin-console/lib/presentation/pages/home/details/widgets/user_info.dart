import 'package:agenda/domain/auth/user.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final User user;
  final Function onAddRoleTapped;

  const UserInfo({
    Key key,
    @required this.user,
    @required this.onAddRoleTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "User details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 140,
                  height: 40,
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.add),
                    onPressed: () => onAddRoleTapped(),
                    label: const Text("Add a role"),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: const Text("Delete"),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          "USER ID",
          style: TextStyle(
            fontSize: 12,
            color: Color(0xffcacaca),
          ),
        ),
        const SizedBox(height: 4),
        Text(user.id.getOrCrash()),
        const SizedBox(height: 20),
        const Text(
          "NAME",
          style: TextStyle(
            fontSize: 12,
            color: Color(0xffcacaca),
          ),
        ),
        const SizedBox(height: 4),
        Text(user.displayName.getOrCrash()),
        const SizedBox(height: 20),
        const Text(
          "EMAIL",
          style: TextStyle(
            fontSize: 12,
            color: Color(0xffcacaca),
          ),
        ),
        const SizedBox(height: 4),
        Text(user.email.getOrCrash()),
      ],
    );
  }
}
