// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WriteTodo _$WriteTodoFromJson(Map<String, dynamic> json) {
  return _WriteTodo.fromJson(json);
}

/// @nodoc
mixin _$WriteTodo {
  String get title => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteTodoCopyWith<WriteTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteTodoCopyWith<$Res> {
  factory $WriteTodoCopyWith(WriteTodo value, $Res Function(WriteTodo) then) =
      _$WriteTodoCopyWithImpl<$Res, WriteTodo>;
  @useResult
  $Res call(
      {String title,
      bool isCompleted,
      DateTime? createdAt,
      DateTime? dateModified,
      String? status});
}

/// @nodoc
class _$WriteTodoCopyWithImpl<$Res, $Val extends WriteTodo>
    implements $WriteTodoCopyWith<$Res> {
  _$WriteTodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? isCompleted = null,
    Object? createdAt = freezed,
    Object? dateModified = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteTodoImplCopyWith<$Res>
    implements $WriteTodoCopyWith<$Res> {
  factory _$$WriteTodoImplCopyWith(
          _$WriteTodoImpl value, $Res Function(_$WriteTodoImpl) then) =
      __$$WriteTodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      bool isCompleted,
      DateTime? createdAt,
      DateTime? dateModified,
      String? status});
}

/// @nodoc
class __$$WriteTodoImplCopyWithImpl<$Res>
    extends _$WriteTodoCopyWithImpl<$Res, _$WriteTodoImpl>
    implements _$$WriteTodoImplCopyWith<$Res> {
  __$$WriteTodoImplCopyWithImpl(
      _$WriteTodoImpl _value, $Res Function(_$WriteTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? isCompleted = null,
    Object? createdAt = freezed,
    Object? dateModified = freezed,
    Object? status = freezed,
  }) {
    return _then(_$WriteTodoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteTodoImpl implements _WriteTodo {
  _$WriteTodoImpl(
      {required this.title,
      this.isCompleted = false,
      this.createdAt,
      this.dateModified,
      this.status});

  factory _$WriteTodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteTodoImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? dateModified;
  @override
  final String? status;

  @override
  String toString() {
    return 'WriteTodo(title: $title, isCompleted: $isCompleted, createdAt: $createdAt, dateModified: $dateModified, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteTodoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, isCompleted, createdAt, dateModified, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteTodoImplCopyWith<_$WriteTodoImpl> get copyWith =>
      __$$WriteTodoImplCopyWithImpl<_$WriteTodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteTodoImplToJson(
      this,
    );
  }
}

abstract class _WriteTodo implements WriteTodo {
  factory _WriteTodo(
      {required final String title,
      final bool isCompleted,
      final DateTime? createdAt,
      final DateTime? dateModified,
      final String? status}) = _$WriteTodoImpl;

  factory _WriteTodo.fromJson(Map<String, dynamic> json) =
      _$WriteTodoImpl.fromJson;

  @override
  String get title;
  @override
  bool get isCompleted;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get dateModified;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$WriteTodoImplCopyWith<_$WriteTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
