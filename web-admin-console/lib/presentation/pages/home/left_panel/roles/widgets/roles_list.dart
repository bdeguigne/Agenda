import 'package:agenda/domain/roles/roles.dart';
import 'package:flutter/material.dart';

class RolesList extends StatelessWidget {
  final List<Roles> roles;
  const RolesList({
    Key key,
    @required this.roles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: roles
          .map(
            (role) => ListTile(
              onTap: () {},
              title: Text(role.name),
            ),
          )
          .toList(),
    );
  }
}
