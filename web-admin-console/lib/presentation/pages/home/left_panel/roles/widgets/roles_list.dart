import 'package:agenda/domain/roles/roles.dart';
import 'package:flutter/material.dart';

class RolesList extends StatelessWidget {
  final Function(Roles role) onRoleTapped;
  final List<Roles> roles;

  const RolesList({
    Key key,
    @required this.roles,
    @required this.onRoleTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: roles
          .map(
            (role) => ListTile(
              onTap: () => onRoleTapped(role),
              title: Text(role.name),
            ),
          )
          .toList(),
    );
  }
}
