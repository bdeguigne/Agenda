import 'package:agenda/domain/collection_right/right.dart';
import 'package:agenda/presentation/pages/home/selector/rights/widgets/right_checkbox.dart';
import 'package:flutter/material.dart';

class ExpansionItem {
  List<Right> expandedValue;
  String headerValue;
  bool isExpanded;

  ExpansionItem({
    @required this.expandedValue,
    @required this.headerValue,
    this.isExpanded = false,
  });
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
  final List<Right> selectedRight;
  final Function(Right) onSelected;
  final Function(Right) onDeselected;
  final List<CollectionRight> collectionRights;

  const ExpansionList({
    Key key,
    @required this.collectionRights,
    @required this.onSelected,
    @required this.onDeselected,
    @required this.selectedRight,
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
                .map((Right right) => RightCheckbox(
                      isSelected: widget.selectedRight.contains(right),
                      right: right,
                      onSelected: widget.onSelected,
                      onDeselected: widget.onDeselected,
                    ))
                .toList(),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
