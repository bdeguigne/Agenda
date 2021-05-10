import 'package:agenda/domain/roles/role.dart';
import 'package:flutter/material.dart';

class RoleInfo extends StatefulWidget {
  final Function() onEditTapped;
  final Function() onApplyTapped;
  final Role role;

  const RoleInfo({
    Key key,
    @required this.role,
    @required this.onEditTapped,
    @required this.onApplyTapped,
  }) : super(key: key);

  @override
  _RoleInfoState createState() => _RoleInfoState();
}

class _RoleInfoState extends State<RoleInfo> {
  bool _showValidationButtons = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.role.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            if (_showValidationButtons)
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                    width: 110,
                    height: 40,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          _showValidationButtons = false;
                        });
                      },
                      label: const Text("Cancel"),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                    width: 110,
                    height: 40,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      icon: const Icon(Icons.check),
                      onPressed: () {
                        widget.onApplyTapped();
                        // setState(() {
                        //   _showValidationButtons = false;
                        // });
                      },
                      label: const Text("Apply"),
                    ),
                  ),
                ],
              )
            else
              SizedBox(
                width: 110,
                height: 40,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () {
                    widget.onEditTapped();
                    setState(() {
                      _showValidationButtons = true;
                    });
                  },
                  label: const Text("Edit"),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          "RIGHTS",
          style: TextStyle(
            fontSize: 12,
            color: Color(0xffcacaca),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: widget.role.rights
              .map((right) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Chip(
                      label: Text(right.name),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
