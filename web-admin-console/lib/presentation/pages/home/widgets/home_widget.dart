import 'package:agenda/presentation/pages/home/details/details_provider.dart';
import 'package:agenda/presentation/pages/home/left_panel/left_panel.dart';
import 'package:agenda/presentation/pages/home/selector/rights/rights_provider.dart';
import 'package:agenda/presentation/pages/home/selector/selector_provider.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final Function() onSignOutPressed;

  const HomeWidget({
    Key key,
    @required this.onSignOutPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f5fa),
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Agenda - Admin Console",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => onSignOutPressed(),
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          LeftPanel(),
          DetailsProvider(),
          SelectorProvider(),
        ],
      ),
    );
  }
}
