import 'dart:io';

import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/presentation/pages/profile/widgets/profile_picture_image.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final Function(File path) onNewAvatarSelected;
  final User user;
  final bool isProfilePictureLoading;

  const ProfileWidget({
    Key key,
    @required this.user,
    @required this.onNewAvatarSelected,
    @required this.isProfilePictureLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: !isProfilePictureLoading
                ? ProfilePictureImage(
                    picture: user.picture,
                    onNewAvatarSelected: (path) => onNewAvatarSelected(path),
                  )
                : const CircularProgressIndicator(),
          ),
          const SizedBox(height: 38),
          Center(
            child: Text(user.email.getOrCrash()),
          ),
          const SizedBox(height: 18),
          Center(
            child: Text("Role : ${user.role.getOrCrash()}"),
          ),
        ],
      ),
    );
  }
}
