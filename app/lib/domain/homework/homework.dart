import 'package:agenda/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework.freezed.dart';

@freezed
abstract class Homework with _$Homework {
  const factory Homework({
    @required UniqueId id,
    // TODO Change homework name type by a value object for verification (max title length)
    @required String name,
  }) = _Homework;
}
