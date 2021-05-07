import 'package:agenda/domain/collection_right/right.dart';
import 'package:flutter/material.dart';

import 'expansion_list.dart';

class RightsList extends StatelessWidget {
  final List<CollectionRight> collectionRights;

  const RightsList({
    Key key,
    @required this.collectionRights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: ExpansionList(
          collectionRights: collectionRights,
        ),
      ),
    );
  }
}
