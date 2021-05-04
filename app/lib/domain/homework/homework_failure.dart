import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework_failure.freezed.dart';

@freezed
abstract class HomeworkFailure with _$HomeworkFailure {
  const factory HomeworkFailure.unexpected() = Unexpected;
  const factory HomeworkFailure.insufficientPermission() =
      InsufficientPermission;
}
