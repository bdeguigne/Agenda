import 'package:agenda/domain/roles/roles.dart';
import 'package:flutter/material.dart';

class RoleInfo extends StatelessWidget {
  final Roles role;

  const RoleInfo({
    Key key,
    @required this.role,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          role.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          "RIGHTS",
          style: TextStyle(
            fontSize: 12,
            color: Color(0xffcacaca),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: role.rights
              .map((right) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Chip(
                      label: Text(right.name),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
