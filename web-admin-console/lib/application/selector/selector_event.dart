part of 'selector_bloc.dart';

@freezed
abstract class SelectorEvent with _$SelectorEvent {
  const factory SelectorEvent.rolesShowed() = _RolesShowed;
  const factory SelectorEvent.rightsShowed() = _RightsShowed;
}
