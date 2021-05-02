import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final Function() onSignOutPressed;
  final Function() onProfilePressed;

  const HomeWidget({
    Key key,
    @required this.onSignOutPressed,
    @required this.onProfilePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: 72,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                ),
                onPressed: () => onProfilePressed()),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Home page"),
          ),
          ElevatedButton(
            onPressed: () => onSignOutPressed(),
            child: const Text("Sign out"),
          ),
        ],
      ),
    );
  }
}
