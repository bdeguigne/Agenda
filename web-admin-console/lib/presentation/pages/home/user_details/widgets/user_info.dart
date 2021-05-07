import 'package:agenda/domain/auth/user.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final User user;

  const UserInfo({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "User details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
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
