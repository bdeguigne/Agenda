import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_picture.freezed.dart';
part 'profile_picture.g.dart';

@freezed
abstract class ProfilePicture with _$ProfilePicture {
  const factory ProfilePicture({
    @required String photoUrl,
    @required bool isStorage,
  }) = _ProfilePicture;

  const ProfilePicture._();

  factory ProfilePicture.defaultPicture() {
    final firebase_storage.FirebaseStorage storage =
        firebase_storage.FirebaseStorage.instance;

    final String profilePicturePath =
        storage.ref().child("profilePictures").child("default.png").fullPath;

    return ProfilePicture(
      photoUrl: profilePicturePath,
      isStorage: true,
    );
  }

  factory ProfilePicture.updatePhotoFromStorage(String fileName) {
    final firebase_storage.FirebaseStorage storage =
        firebase_storage.FirebaseStorage.instance;

    final String profilePicturePath =
        storage.ref().child("profilePictures").child(fileName).fullPath;

    return ProfilePicture(
      photoUrl: profilePicturePath,
      isStorage: true,
    );
  }

  factory ProfilePicture.fromPhotoUrl(String photoUrl) {
    if (photoUrl != null) {
      return ProfilePicture(
        photoUrl: photoUrl,
        isStorage: false,
      );
    }

    return ProfilePicture.defaultPicture();
  }

  Future<String> url() async {
    return firebase_storage.FirebaseStorage.instance
        .ref(photoUrl)
        .getDownloadURL();
  }

  factory ProfilePicture.fromJson(Map<String, dynamic> json) =>
      _$ProfilePictureFromJson(json);
}
