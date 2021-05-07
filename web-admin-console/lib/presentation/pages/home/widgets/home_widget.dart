import 'package:agenda/presentation/pages/home/left_panel/left_panel.dart';
import 'package:agenda/presentation/pages/home/left_panel/users_list/users_list_provider.dart';
import 'package:agenda/presentation/pages/home/rights/rights_provider.dart';
import 'package:agenda/presentation/pages/home/user_details/user_details_provider.dart';
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
        // children: users.map((e) => Text(e.email.getOrCrash())).toList(),
        children: const [
          LeftPanel(),
          UserDetailsProvider(),
          RightsProvider(),
        ],
      ),
    );
  }
}
