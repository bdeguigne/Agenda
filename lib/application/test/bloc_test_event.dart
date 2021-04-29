part of 'bloc_test_bloc.dart';

@freezed
abstract class BlocTestEvent with _$BlocTestEvent {
  const factory BlocTestEvent.started() = _Started;
}
