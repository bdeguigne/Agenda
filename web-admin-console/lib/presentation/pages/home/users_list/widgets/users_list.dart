import 'dart:ui';

import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/presentation/pages/home/users_list/widgets/user_card.dart';
import 'package:flutter/material.dart';

class UsersList extends StatelessWidget {
  final List<User> users;

  const UsersList({
    Key key,
    @required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: users
          .map(
            (user) => UserCard(
              user: user,
              onTap: (user) => print("TAP $user"),
            ),
          )
          .toList(),
    );
  }
}

// child: ListView(
//             children: users.map((e) => Text(e.email.getOrCrash())).toList(),
//           ),
