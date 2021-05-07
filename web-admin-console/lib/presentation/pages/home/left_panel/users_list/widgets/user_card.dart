import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/presentation/core/show_profile_picture.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final Function(User user) onTap;
  final User user;

  const UserCard({
    Key key,
    @required this.user,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onTap(user),
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Row(
            children: [
              ShowProfilePicture(picture: user.picture),
              const SizedBox(width: 12),
              Text(user.displayName.getOrCrash()),
            ],
          ),
        ),
      ),
    );
  }
}
