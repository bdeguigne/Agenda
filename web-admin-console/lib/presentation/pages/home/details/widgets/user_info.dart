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
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
            // SizedBox(
            //   width: 120,
            //   height: 40,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(Colors.red),
            //     ),
            //     child: const Text("Delete"),
            //   ),
            // ),
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
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Permissions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 140,
              height: 40,
              child: OutlinedButton.icon(
                icon: const Icon(Icons.edit_outlined),
                onPressed: () => onAddRoleTapped(),
                label: const Text("Edit role"),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          "ROLE",
          style: TextStyle(
            fontSize: 12,
            color: Color(0xffcacaca),
          ),
        ),
        const SizedBox(height: 4),
        Text(user.permissions.role),
        if (user.permissions.rights.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Text(
                "RIGHTS",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xffcacaca),
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: user.permissions.rights
                    .map(
                      (right) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Chip(
                          label: Text(right),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          )
      ],
    );
  }
}
