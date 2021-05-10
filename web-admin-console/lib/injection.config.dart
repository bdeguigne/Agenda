// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'application/collection_right/collection_right_watcher_bloc.dart'
    as _i19;
import 'application/roles/roles_actor/roles_actor_bloc.dart' as _i13;
import 'application/roles/roles_watcher/roles_watcher_bloc.dart' as _i14;
import 'application/users/users_actor/users_actor_bloc.dart' as _i16;
import 'application/users/users_watcher/users_watcher_bloc.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/collection_right/i_rights_repository.dart' as _i7;
import 'domain/roles/i_roles_repository.dart' as _i9;
import 'domain/users/i_users_repository.dart' as _i11;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i20;
import 'infrastructure/rights/rights_repository.dart' as _i8;
import 'infrastructure/roles/roles_repository.dart' as _i10;
import 'infrastructure/users/users_repository.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.IRightsRepository>(
      () => _i8.RightsRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IRolesRepository>(
      () => _i10.RolesRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IUsersRepository>(
      () => _i12.UsersRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i13.RolesActorBloc>(
      () => _i13.RolesActorBloc(get<_i9.IRolesRepository>()));
  gh.factory<_i14.RolesWatcherBloc>(
      () => _i14.RolesWatcherBloc(get<_i9.IRolesRepository>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i16.UsersActorBloc>(
      () => _i16.UsersActorBloc(get<_i11.IUsersRepository>()));
  gh.factory<_i17.UsersWatcherBloc>(
      () => _i17.UsersWatcherBloc(get<_i11.IUsersRepository>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i19.CollectionRightWatcherBloc>(
      () => _i19.CollectionRightWatcherBloc(get<_i7.IRightsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}
