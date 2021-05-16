// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'homework_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeworkFormEventTearOff {
  const _$HomeworkFormEventTearOff();

// ignore: unused_element
  TitleChanged titleChanged(String title) {
    return TitleChanged(
      title,
    );
  }

// ignore: unused_element
  DescriptionChanged descriptionChanged(String description) {
    return DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  DateChanged dateChanged(DateTime date) {
    return DateChanged(
      date,
    );
  }

// ignore: unused_element
  DocumentAdded documentAdded(Document document) {
    return DocumentAdded(
      document,
    );
  }

// ignore: unused_element
  _CreateHomeworkPressed createHomeworkPressed() {
    return const _CreateHomeworkPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeworkFormEvent = _$HomeworkFormEventTearOff();

/// @nodoc
mixin _$HomeworkFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult documentAdded(Document document),
    @required TResult createHomeworkPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult documentAdded(Document document),
    TResult createHomeworkPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult titleChanged(TitleChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult documentAdded(DocumentAdded value),
    @required TResult createHomeworkPressed(_CreateHomeworkPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult titleChanged(TitleChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult documentAdded(DocumentAdded value),
    TResult createHomeworkPressed(_CreateHomeworkPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HomeworkFormEventCopyWith<$Res> {
  factory $HomeworkFormEventCopyWith(
          HomeworkFormEvent value, $Res Function(HomeworkFormEvent) then) =
      _$HomeworkFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeworkFormEventCopyWithImpl<$Res>
    implements $HomeworkFormEventCopyWith<$Res> {
  _$HomeworkFormEventCopyWithImpl(this._value, this._then);

  final HomeworkFormEvent _value;
  // ignore: unused_field
  final $Res Function(HomeworkFormEvent) _then;
}

/// @nodoc
abstract class $TitleChangedCopyWith<$Res> {
  factory $TitleChangedCopyWith(
          TitleChanged value, $Res Function(TitleChanged) then) =
      _$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$TitleChangedCopyWithImpl<$Res>
    extends _$HomeworkFormEventCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(
      TitleChanged _value, $Res Function(TitleChanged) _then)
      : super(_value, (v) => _then(v as TitleChanged));

  @override
  TitleChanged get _value => super._value as TitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(TitleChanged(
      title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'HomeworkFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult documentAdded(Document document),
    @required TResult createHomeworkPressed(),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult documentAdded(Document document),
    TResult createHomeworkPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult titleChanged(TitleChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult documentAdded(DocumentAdded value),
    @required TResult createHomeworkPressed(_CreateHomeworkPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult titleChanged(TitleChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult documentAdded(DocumentAdded value),
    TResult createHomeworkPressed(_CreateHomeworkPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements HomeworkFormEvent {
  const factory TitleChanged(String title) = _$TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  $TitleChangedCopyWith<TitleChanged> get copyWith;
}

/// @nodoc
abstract class $DescriptionChangedCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(
          DescriptionChanged value, $Res Function(DescriptionChanged) then) =
      _$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$DescriptionChangedCopyWithImpl<$Res>
    extends _$HomeworkFormEventCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(
      DescriptionChanged _value, $Res Function(DescriptionChanged) _then)
      : super(_value, (v) => _then(v as DescriptionChanged));

  @override
  DescriptionChanged get _value => super._value as DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$DescriptionChanged implements DescriptionChanged {
  const _$DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'HomeworkFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith =>
      _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult documentAdded(Document document),
    @required TResult createHomeworkPressed(),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult documentAdded(Document document),
    TResult createHomeworkPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult titleChanged(TitleChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult documentAdded(DocumentAdded value),
    @required TResult createHomeworkPressed(_CreateHomeworkPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult titleChanged(TitleChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult documentAdded(DocumentAdded value),
    TResult createHomeworkPressed(_CreateHomeworkPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements HomeworkFormEvent {
  const factory DescriptionChanged(String description) = _$DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith;
}

/// @nodoc
abstract class $DateChangedCopyWith<$Res> {
  factory $DateChangedCopyWith(
          DateChanged value, $Res Function(DateChanged) then) =
      _$DateChangedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$DateChangedCopyWithImpl<$Res>
    extends _$HomeworkFormEventCopyWithImpl<$Res>
    implements $DateChangedCopyWith<$Res> {
  _$DateChangedCopyWithImpl(
      DateChanged _value, $Res Function(DateChanged) _then)
      : super(_value, (v) => _then(v as DateChanged));

  @override
  DateChanged get _value => super._value as DateChanged;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(DateChanged(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$DateChanged implements DateChanged {
  const _$DateChanged(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HomeworkFormEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateChanged &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $DateChangedCopyWith<DateChanged> get copyWith =>
      _$DateChangedCopyWithImpl<DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult documentAdded(Document document),
    @required TResult createHomeworkPressed(),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult documentAdded(Document document),
    TResult createHomeworkPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult titleChanged(TitleChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult documentAdded(DocumentAdded value),
    @required TResult createHomeworkPressed(_CreateHomeworkPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult titleChanged(TitleChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult documentAdded(DocumentAdded value),
    TResult createHomeworkPressed(_CreateHomeworkPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class DateChanged implements HomeworkFormEvent {
  const factory DateChanged(DateTime date) = _$DateChanged;

  DateTime get date;
  @JsonKey(ignore: true)
  $DateChangedCopyWith<DateChanged> get copyWith;
}

/// @nodoc
abstract class $DocumentAddedCopyWith<$Res> {
  factory $DocumentAddedCopyWith(
          DocumentAdded value, $Res Function(DocumentAdded) then) =
      _$DocumentAddedCopyWithImpl<$Res>;
  $Res call({Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$DocumentAddedCopyWithImpl<$Res>
    extends _$HomeworkFormEventCopyWithImpl<$Res>
    implements $DocumentAddedCopyWith<$Res> {
  _$DocumentAddedCopyWithImpl(
      DocumentAdded _value, $Res Function(DocumentAdded) _then)
      : super(_value, (v) => _then(v as DocumentAdded));

  @override
  DocumentAdded get _value => super._value as DocumentAdded;

  @override
  $Res call({
    Object document = freezed,
  }) {
    return _then(DocumentAdded(
      document == freezed ? _value.document : document as Document,
    ));
  }

  @override
  $DocumentCopyWith<$Res> get document {
    if (_value.document == null) {
      return null;
    }
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value));
    });
  }
}

/// @nodoc
class _$DocumentAdded implements DocumentAdded {
  const _$DocumentAdded(this.document) : assert(document != null);

  @override
  final Document document;

  @override
  String toString() {
    return 'HomeworkFormEvent.documentAdded(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentAdded &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(document);

  @JsonKey(ignore: true)
  @override
  $DocumentAddedCopyWith<DocumentAdded> get copyWith =>
      _$DocumentAddedCopyWithImpl<DocumentAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult documentAdded(Document document),
    @required TResult createHomeworkPressed(),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return documentAdded(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult documentAdded(Document document),
    TResult createHomeworkPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentAdded != null) {
      return documentAdded(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult titleChanged(TitleChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult documentAdded(DocumentAdded value),
    @required TResult createHomeworkPressed(_CreateHomeworkPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return documentAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult titleChanged(TitleChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult documentAdded(DocumentAdded value),
    TResult createHomeworkPressed(_CreateHomeworkPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentAdded != null) {
      return documentAdded(this);
    }
    return orElse();
  }
}

abstract class DocumentAdded implements HomeworkFormEvent {
  const factory DocumentAdded(Document document) = _$DocumentAdded;

  Document get document;
  @JsonKey(ignore: true)
  $DocumentAddedCopyWith<DocumentAdded> get copyWith;
}

/// @nodoc
abstract class _$CreateHomeworkPressedCopyWith<$Res> {
  factory _$CreateHomeworkPressedCopyWith(_CreateHomeworkPressed value,
          $Res Function(_CreateHomeworkPressed) then) =
      __$CreateHomeworkPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateHomeworkPressedCopyWithImpl<$Res>
    extends _$HomeworkFormEventCopyWithImpl<$Res>
    implements _$CreateHomeworkPressedCopyWith<$Res> {
  __$CreateHomeworkPressedCopyWithImpl(_CreateHomeworkPressed _value,
      $Res Function(_CreateHomeworkPressed) _then)
      : super(_value, (v) => _then(v as _CreateHomeworkPressed));

  @override
  _CreateHomeworkPressed get _value => super._value as _CreateHomeworkPressed;
}

/// @nodoc
class _$_CreateHomeworkPressed implements _CreateHomeworkPressed {
  const _$_CreateHomeworkPressed();

  @override
  String toString() {
    return 'HomeworkFormEvent.createHomeworkPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateHomeworkPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(DateTime date),
    @required TResult documentAdded(Document document),
    @required TResult createHomeworkPressed(),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return createHomeworkPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult dateChanged(DateTime date),
    TResult documentAdded(Document document),
    TResult createHomeworkPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createHomeworkPressed != null) {
      return createHomeworkPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult titleChanged(TitleChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult documentAdded(DocumentAdded value),
    @required TResult createHomeworkPressed(_CreateHomeworkPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(documentAdded != null);
    assert(createHomeworkPressed != null);
    return createHomeworkPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult titleChanged(TitleChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult documentAdded(DocumentAdded value),
    TResult createHomeworkPressed(_CreateHomeworkPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createHomeworkPressed != null) {
      return createHomeworkPressed(this);
    }
    return orElse();
  }
}

abstract class _CreateHomeworkPressed implements HomeworkFormEvent {
  const factory _CreateHomeworkPressed() = _$_CreateHomeworkPressed;
}

/// @nodoc
class _$HomeworkFormStateTearOff {
  const _$HomeworkFormStateTearOff();

// ignore: unused_element
  _HomeworkFormState call(
      {@required
          String title,
      @required
          String description,
      @required
          DateTime deliveryDate,
      @required
          List<Document> homeworkFiles,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<HomeworkFailure, Unit>>
              homeworkFailureOrSuccessOption}) {
    return _HomeworkFormState(
      title: title,
      description: description,
      deliveryDate: deliveryDate,
      homeworkFiles: homeworkFiles,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeworkFormState = _$HomeworkFormStateTearOff();

/// @nodoc
mixin _$HomeworkFormState {
  String get title;
  String get description;
  DateTime get deliveryDate;
  List<Document> get homeworkFiles;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<HomeworkFailure, Unit>> get homeworkFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $HomeworkFormStateCopyWith<HomeworkFormState> get copyWith;
}

/// @nodoc
abstract class $HomeworkFormStateCopyWith<$Res> {
  factory $HomeworkFormStateCopyWith(
          HomeworkFormState value, $Res Function(HomeworkFormState) then) =
      _$HomeworkFormStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      DateTime deliveryDate,
      List<Document> homeworkFiles,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption});
}

/// @nodoc
class _$HomeworkFormStateCopyWithImpl<$Res>
    implements $HomeworkFormStateCopyWith<$Res> {
  _$HomeworkFormStateCopyWithImpl(this._value, this._then);

  final HomeworkFormState _value;
  // ignore: unused_field
  final $Res Function(HomeworkFormState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object deliveryDate = freezed,
    Object homeworkFiles = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object homeworkFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate as DateTime,
      homeworkFiles: homeworkFiles == freezed
          ? _value.homeworkFiles
          : homeworkFiles as List<Document>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption == freezed
          ? _value.homeworkFailureOrSuccessOption
          : homeworkFailureOrSuccessOption
              as Option<Either<HomeworkFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$HomeworkFormStateCopyWith<$Res>
    implements $HomeworkFormStateCopyWith<$Res> {
  factory _$HomeworkFormStateCopyWith(
          _HomeworkFormState value, $Res Function(_HomeworkFormState) then) =
      __$HomeworkFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      DateTime deliveryDate,
      List<Document> homeworkFiles,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption});
}

/// @nodoc
class __$HomeworkFormStateCopyWithImpl<$Res>
    extends _$HomeworkFormStateCopyWithImpl<$Res>
    implements _$HomeworkFormStateCopyWith<$Res> {
  __$HomeworkFormStateCopyWithImpl(
      _HomeworkFormState _value, $Res Function(_HomeworkFormState) _then)
      : super(_value, (v) => _then(v as _HomeworkFormState));

  @override
  _HomeworkFormState get _value => super._value as _HomeworkFormState;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object deliveryDate = freezed,
    Object homeworkFiles = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object homeworkFailureOrSuccessOption = freezed,
  }) {
    return _then(_HomeworkFormState(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate as DateTime,
      homeworkFiles: homeworkFiles == freezed
          ? _value.homeworkFiles
          : homeworkFiles as List<Document>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption == freezed
          ? _value.homeworkFailureOrSuccessOption
          : homeworkFailureOrSuccessOption
              as Option<Either<HomeworkFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_HomeworkFormState implements _HomeworkFormState {
  const _$_HomeworkFormState(
      {@required this.title,
      @required this.description,
      @required this.deliveryDate,
      @required this.homeworkFiles,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.homeworkFailureOrSuccessOption})
      : assert(title != null),
        assert(description != null),
        assert(deliveryDate != null),
        assert(homeworkFiles != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(homeworkFailureOrSuccessOption != null);

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime deliveryDate;
  @override
  final List<Document> homeworkFiles;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeworkFormState(title: $title, description: $description, deliveryDate: $deliveryDate, homeworkFiles: $homeworkFiles, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, homeworkFailureOrSuccessOption: $homeworkFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeworkFormState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.homeworkFiles, homeworkFiles) ||
                const DeepCollectionEquality()
                    .equals(other.homeworkFiles, homeworkFiles)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.homeworkFailureOrSuccessOption,
                    homeworkFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.homeworkFailureOrSuccessOption,
                    homeworkFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(homeworkFiles) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(homeworkFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$HomeworkFormStateCopyWith<_HomeworkFormState> get copyWith =>
      __$HomeworkFormStateCopyWithImpl<_HomeworkFormState>(this, _$identity);
}

abstract class _HomeworkFormState implements HomeworkFormState {
  const factory _HomeworkFormState(
      {@required
          String title,
      @required
          String description,
      @required
          DateTime deliveryDate,
      @required
          List<Document> homeworkFiles,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<HomeworkFailure, Unit>>
              homeworkFailureOrSuccessOption}) = _$_HomeworkFormState;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get deliveryDate;
  @override
  List<Document> get homeworkFiles;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<HomeworkFailure, Unit>> get homeworkFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$HomeworkFormStateCopyWith<_HomeworkFormState> get copyWith;
}
