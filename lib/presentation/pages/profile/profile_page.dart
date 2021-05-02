import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/application/homework/homework_bloc.dart';
import 'package:agenda/application/profile/profile_bloc.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/profile/profile_picture.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/profile/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isProfilePictureLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>(),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          setState(() {
            _isProfilePictureLoading = state.isProfilePictureLoading;
          });
          state.profileFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) => ScaffoldMessenger.of(context).showSnackBar(
                AppSnackBar.errorSnackBar(failure.maybeWhen(
                  cancelledByUser: () => "Cancelled",
                  orElse: () => "Server Error",
                )).toSnackBar,
              ),
              (_) {
                final User user =
                    context.read<AuthBloc>().state.user.getOrElse(() => null);
                context.read<AuthBloc>().add(
                      AuthEvent.userUpdated(
                        user.copyWith(
                          picture: ProfilePicture.updatePhotoFromStorage(
                            user.id.getOrCrash(),
                          ),
                        ),
                      ),
                    );
                return ScaffoldMessenger.of(context).showSnackBar(
                  AppSnackBar.successSnackBar(
                          "Profile picture successfully updated")
                      .toSnackBar,
                );
              },
            ),
          );
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return context.read<AuthBloc>().state.user.fold(
              () {
                // TODO Message d'erreur et rediriger vers le login
                return const Scaffold(
                  body: Center(
                    child: Text("Waiting for user..."),
                  ),
                );
              },
              (user) => ProfileWidget(
                isProfilePictureLoading: _isProfilePictureLoading,
                user: user,
                onNewAvatarSelected: (path) => context.read<ProfileBloc>().add(
                      ProfileEvent.profilePictureChanged(path),
                    ),
              ),
            );
          },
        ),
      ),
    );
  }
}
