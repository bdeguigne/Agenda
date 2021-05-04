import 'dart:ui';

import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/profile/profile_picture.dart';
import 'package:agenda/presentation/pages/home/users_list/widgets/user_card.dart';
import 'package:flutter/material.dart';

class UsersList extends StatelessWidget {
  final List<User> users;

  const UsersList({
    Key key,
    @required this.users,
  }) : super(key: key);

  // static final List<User> testUsers = [
  //   User(
  //       displayName: Name("Brice Deguigne"),
  //       email: EmailAddress("user1@gmail.com"),
  //       role: Role(RoleTypes.student),
  //       picture: ProfilePicture.defaultPicture()),
  //   User(
  //       displayName: Name("User one"),
  //       email: EmailAddress("user1@gmail.com"),
  //       role: Role(RoleTypes.student),
  //       picture: ProfilePicture.defaultPicture()),
  //   User(
  //       displayName: Name("Admin Admin"),
  //       email: EmailAddress("user1@gmail.com"),
  //       role: Role(RoleTypes.student),
  //       picture: ProfilePicture.defaultPicture()),
  //   User(
  //       displayName: Name("Bobby Derrick"),
  //       email: EmailAddress("user1@gmail.com"),
  //       role: Role(RoleTypes.student),
  //       picture: ProfilePicture.defaultPicture()),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 250,
      child: ListView(
        children: users
            .map(
              (user) => UserCard(
                user: user,
                onTap: (user) => print("TAP $user"),
              ),
            )
            .toList(),
      ),
    );
  }
}

// child: ListView(
//             children: users.map((e) => Text(e.email.getOrCrash())).toList(),
//           ),
