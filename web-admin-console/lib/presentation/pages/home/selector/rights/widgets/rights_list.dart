import 'package:agenda/domain/collection_right/right.dart';
import 'package:flutter/material.dart';

import 'expansion_list.dart';

class RightsList extends StatelessWidget {
  final Function(Right) onSelected;
  final Function(Right) onDeselected;
  final List<Right> selectedRights;
  final List<CollectionRight> collectionRights;

  const RightsList({
    Key key,
    @required this.collectionRights,
    @required this.onSelected,
    @required this.onDeselected,
    @required this.selectedRights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scrollbar(
        controller: controller,
        child: SingleChildScrollView(
          controller: controller,
          child: ExpansionList(
            onSelected: onSelected,
            onDeselected: onDeselected,
            collectionRights: collectionRights,
            selectedRight: selectedRights,
          ),
        ),
      ),
    );
  }
}
