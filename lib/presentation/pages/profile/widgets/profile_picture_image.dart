import 'dart:io';

import 'package:agenda/domain/profile/profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePictureImage extends StatefulWidget {
  final Function(File path) onNewAvatarSelected;
  final ProfilePicture picture;

  const ProfilePictureImage({
    Key key,
    @required this.picture,
    @required this.onNewAvatarSelected,
  }) : super(key: key);

  @override
  _ProfilePictureImageState createState() => _ProfilePictureImageState();
}

class _ProfilePictureImageState extends State<ProfilePictureImage> {
  File _image;
  final picker = ImagePicker();

  Future getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        widget.onNewAvatarSelected(_image);
      }
    });
  }

  Widget buildImageContent(String imageUrl) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 80,
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(Icons.edit),
            ),
          ),
        ),
        Positioned.fill(
          child: InkWell(
            onTap: () => getImageFromGallery(),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ],
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
