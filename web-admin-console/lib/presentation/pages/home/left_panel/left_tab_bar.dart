import 'package:agenda/presentation/pages/home/left_panel/roles/roles_provider.dart';
import 'package:agenda/presentation/pages/home/left_panel/users_list/users_list_provider.dart';
import 'package:flutter/material.dart';

class LeftTabBar extends StatelessWidget {
  const LeftTabBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          elevation: 1,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.enhanced_encryption_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.group,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            UsersListProvider(),
            RolesProvider(),
            Center(
              child: Text('Groups'),
            ),
          ],
        ),
      ),
    );
  }
}
