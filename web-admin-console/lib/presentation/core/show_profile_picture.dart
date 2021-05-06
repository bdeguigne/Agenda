import 'dart:io';

import 'package:agenda/domain/profile/profile_picture.dart';
import 'package:flutter/material.dart';

class ShowProfilePicture extends StatefulWidget {
  final ProfilePicture picture;
  final double radius;

  const ShowProfilePicture({
    Key key,
    @required this.picture,
    this.radius = 20,
  }) : super(key: key);

  @override
  _ShowProfilePictureState createState() => _ShowProfilePictureState();
}

class _ShowProfilePictureState extends State<ShowProfilePicture> {
  Widget buildImageContent(String imageUrl) {
    return CircleAvatar(
      radius: widget.radius,
      backgroundColor: Colors.white,
      backgroundImage: NetworkImage(imageUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.picture.isStorage) {
      return FutureBuilder(
        future: widget.picture.url(),
        builder: (BuildContext context, AsyncSnapshot<String> imageUrl) {
          if (imageUrl.hasData) {
            return buildImageContent(imageUrl.data);
          } else if (imageUrl.hasError) {
            return const Icon(Icons.error);
          } else {
            return const CircularProgressIndicator();
          }
        },
      );
    } else {
      return buildImageContent(widget.picture.photoUrl);
    }
  }
}
