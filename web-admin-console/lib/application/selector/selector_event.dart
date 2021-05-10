part of 'selector_bloc.dart';

@freezed
abstract class SelectorEvent with _$SelectorEvent {
  const factory SelectorEvent.rolesShowed() = _RolesShowed;
  const factory SelectorEvent.rightsShowed() = _RightsShowed;
  const factory SelectorEvent.loadingStateChanged() = _LoadingStateChanged;
  const factory SelectorEvent.initRights(List<Right> rights) = _InitRights;
  const factory SelectorEvent.rightSelected(Right right) = _RightSelected;
  const factory SelectorEvent.rightDeselected(Right right) = _RightDeselected;
}
