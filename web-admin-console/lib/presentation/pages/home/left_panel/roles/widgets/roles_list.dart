import 'package:agenda/domain/roles/role.dart';
import 'package:flutter/material.dart';

class RolesList extends StatelessWidget {
  final Function(int roleIndex) onRoleTapped;
  final List<Role> roles;

  const RolesList({
    Key key,
    @required this.roles,
    @required this.onRoleTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return Scrollbar(
      controller: controller,
      child: ListView(
        controller: controller,
        children: roles
            .map(
              (role) => ListTile(
                onTap: () => onRoleTapped(roles.indexOf(role)),
                title: Text(role.name),
              ),
            )
            .toList(),
      ),
    );
  }
}
