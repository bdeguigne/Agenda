// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i12;
import 'application/collection_right/collection_right_watcher_bloc.dart'
    as _i15;
import 'application/roles/roles_watcher_bloc.dart' as _i11;
import 'application/users/users_watcher/users_watcher_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/collection_right/i_repository.dart' as _i7;
import 'domain/users/i_users_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i16;
import 'infrastructure/repository/repository.dart' as _i8;
import 'infrastructure/users/users_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i7.IRepository>(
      () => _i8.Repository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IUsersRepository>(
      () => _i10.UsersRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i11.RolesWatcherBloc>(
      () => _i11.RolesWatcherBloc(get<_i7.IRepository>()));
  gh.factory<_i12.SignInFormBloc>(
      () => _i12.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i13.UsersWatcherBloc>(
      () => _i13.UsersWatcherBloc(get<_i9.IUsersRepository>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i15.CollectionRightWatcherBloc>(
      () => _i15.CollectionRightWatcherBloc(get<_i7.IRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}
