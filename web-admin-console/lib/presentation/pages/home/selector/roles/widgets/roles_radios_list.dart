import 'package:agenda/domain/roles/roles.dart';
import 'package:flutter/material.dart';

class RolesRadiosList extends StatefulWidget {
  final List<Roles> roles;

  const RolesRadiosList({
    Key key,
    @required this.roles,
  }) : super(key: key);

  @override
  _RolesRadiosListState createState() => _RolesRadiosListState();
}

class _RolesRadiosListState extends State<RolesRadiosList> {
  Roles _selectedRole;

  @override
  void initState() {
    super.initState();
    _selectedRole = widget.roles[0];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Select a role :",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          );
        } else if (index == 1) {
          return Column(
            children: widget.roles
                .map(
                  (Roles role) => ListTile(
                    title: Text(role.name),
                    leading: Radio<Roles>(
                      value: role,
                      groupValue: _selectedRole,
                      onChanged: (Roles value) {
                        setState(() {
                          _selectedRole = value;
                        });
                      },
                    ),
                  ),
                )
                .toList(),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 12),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Assign this role"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
