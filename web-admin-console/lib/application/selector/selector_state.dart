part of 'selector_bloc.dart';

@freezed
abstract class SelectorState with _$SelectorState {
  const factory SelectorState.initial() = _Initial;
  const factory SelectorState.showRoles() = _ShowRoles;
  const factory SelectorState.showRights() = _ShowRights;
}
