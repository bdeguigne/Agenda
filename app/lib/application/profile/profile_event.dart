part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.profilePictureChanged(File path) =
      ProfilePictureChanged;
}
