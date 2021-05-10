import 'package:agenda/domain/roles/role.dart';
import 'package:agenda/presentation/core/loading_elevated_button.dart';
import 'package:flutter/material.dart';

class RolesRadiosList extends StatefulWidget {
  final bool isLoading;
  final List<Role> roles;
  final Function(Role role) onRoleSelectedPressed;

  const RolesRadiosList({
    Key key,
    @required this.roles,
    @required this.onRoleSelectedPressed,
    @required this.isLoading,
  }) : super(key: key);

  @override
  _RolesRadiosListState createState() => _RolesRadiosListState();
}

class _RolesRadiosListState extends State<RolesRadiosList> {
  Role _selectedRole;

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
                  (Role role) => ListTile(
                    title: Text(role.name),
                    leading: Radio<Role>(
                      value: role,
                      groupValue: _selectedRole,
                      onChanged: (Role value) {
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
                child: LoadingElevatedButton(
                  isLoading: widget.isLoading,
                  onPressed: () => widget.onRoleSelectedPressed(_selectedRole),
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
