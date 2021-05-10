import 'package:agenda/domain/collection_right/right.dart';
import 'package:flutter/material.dart';

class RightCheckbox extends StatefulWidget {
  final Function(Right) onSelected;
  final Function(Right) onDeselected;
  final Right right;
  final bool isSelected;

  const RightCheckbox({
    Key key,
    @required this.right,
    @required this.onSelected,
    @required this.onDeselected,
    @required this.isSelected,
  }) : super(key: key);

  @override
  _RightCheckboxState createState() => _RightCheckboxState();
}

class _RightCheckboxState extends State<RightCheckbox> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widget.isSelected,
      title: Text(
        widget.right.name,
        style: const TextStyle(fontSize: 14),
      ),
      subtitle: Text(
        widget.right.slug,
        style: const TextStyle(fontSize: 12),
      ),
      onChanged: (bool value) {
        if (value == true) {
          widget.onSelected(widget.right);
        } else {
          widget.onDeselected(widget.right);
        }
      },
    );
  }
}
