part of 'homework_bloc.dart';

@freezed
abstract class HomeworkEvent with _$HomeworkEvent {
  const factory HomeworkEvent.created() = Created;
  const factory HomeworkEvent.getAll() = GetAll;
  const factory HomeworkEvent.getAllUsers() = GetAllUsers;
}
