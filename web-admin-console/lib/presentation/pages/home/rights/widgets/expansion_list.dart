import 'package:agenda/domain/collection_right/right.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ExpansionItem {
  ExpansionItem({
    @required this.expandedValue,
    @required this.headerValue,
    this.isExpanded = false,
  });

  List<Right> expandedValue;
  String headerValue;
  bool isExpanded;
}

List<ExpansionItem> generateItems(List<CollectionRight> items) {
  return List<ExpansionItem>.generate(items.length, (int index) {
    return ExpansionItem(
      headerValue: items[index].collection,
      expandedValue: items[index].rights,
    );
  });
}

class ExpansionList extends StatefulWidget {
  final List<CollectionRight> collectionRights;

  const ExpansionList({
    Key key,
    @required this.collectionRights,
  }) : super(key: key);

  @override
  _ExpansionListState createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  List<ExpansionItem> _data;

  @override
  void initState() {
    super.initState();

    setState(() {
      _data = generateItems(widget.collectionRights);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _data[panelIndex].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((ExpansionItem item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: Column(
            children: item.expandedValue
                .map((Right right) => ListTile(
                      title: Text(right.name),
                      subtitle: Text(right.slug),
                    ))
                .toList(),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
