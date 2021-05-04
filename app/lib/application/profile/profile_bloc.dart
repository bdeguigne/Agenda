import 'dart:async';
import 'dart:io';

import 'package:agenda/domain/auth/auth_failure.dart';
import 'package:agenda/domain/auth/i_auth_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthFacade _authFacade;

  ProfileBloc(this._authFacade) : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      profilePictureChanged: (e) async* {
        yield state.copyWith(
            isProfilePictureLoading: true,
            profileFailureOrSuccessOption: none());
        final profilePictureSuccessOption =
            await _authFacade.changeProfilePicture(e.path);
        yield state.copyWith(
          isProfilePictureLoading: false,
          profileFailureOrSuccessOption: some(profilePictureSuccessOption),
        );
      },
    );
  }
}
