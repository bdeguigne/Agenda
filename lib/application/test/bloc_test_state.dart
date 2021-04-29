part of 'bloc_test_bloc.dart';

@freezed
abstract class BlocTestState with _$BlocTestState {
  const factory BlocTestState({
    @required Option<EmailAddress> emailTest,
  }) = _BlocTestState;

  factory BlocTestState.initial() => BlocTestState(
        emailTest: some(EmailAddress("initial@init.com")),
      );
}
