import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/presentation/pages/home/left_panel/users_list/widgets/user_card.dart';
import 'package:flutter/material.dart';

class UsersList extends StatelessWidget {
  final Function(int userIndex) onUserTapped;
  final List<User> users;

  const UsersList({
    Key key,
    @required this.users,
    @required this.onUserTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: users
          .map(
            (user) => UserCard(
              user: user,
              onTap: (user) => onUserTapped(users.indexOf(user)),
            ),
          )
          .toList(),
    );
  }
}

// child: ListView(
//             children: users.map((e) => Text(e.email.getOrCrash())).toList(),
//           ),
