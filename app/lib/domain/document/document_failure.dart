import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_failure.freezed.dart';

@freezed
abstract class DocumentFailure with _$DocumentFailure {
  const factory DocumentFailure.insufficientPermission() =
      InsuficientPermission;
  const factory DocumentFailure.canceled() = Canceled;
  const factory DocumentFailure.unexpected() = Unexpected;
}
