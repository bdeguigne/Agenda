part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @required bool isProfilePictureLoading,
    @required Option<Either<AuthFailure, Unit>> profileFailureOrSuccessOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        isProfilePictureLoading: false,
        profileFailureOrSuccessOption: none(),
      );
}
