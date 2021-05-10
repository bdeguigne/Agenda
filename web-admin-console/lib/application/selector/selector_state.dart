part of 'selector_bloc.dart';

enum SelectorMenu { none, roles, rights }

@freezed
abstract class SelectorState with _$SelectorState {
  const factory SelectorState({
    @required SelectorMenu menu,
    @required bool isLoading,
    @required List<Right> selectedRights,
  }) = _SelectorState;

  factory SelectorState.initial() => const SelectorState(
        menu: SelectorMenu.none,
        isLoading: false,
        selectedRights: [],
      );

  // const factory SelectorState.initial() = _Initial;
  // const factory SelectorState.showRoles() = _ShowRoles;
  // const factory SelectorState.showRights() = _ShowRights;
}
