// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReadTodo _$ReadTodoFromJson(Map<String, dynamic> json) {
  return _ReadTodo.fromJson(json);
}

/// @nodoc
mixin _$ReadTodo {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadTodoCopyWith<ReadTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadTodoCopyWith<$Res> {
  factory $ReadTodoCopyWith(ReadTodo value, $Res Function(ReadTodo) then) =
      _$ReadTodoCopyWithImpl<$Res, ReadTodo>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$ReadTodoCopyWithImpl<$Res, $Val extends ReadTodo>
    implements $ReadTodoCopyWith<$Res> {
  _$ReadTodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadTodoImplCopyWith<$Res>
    implements $ReadTodoCopyWith<$Res> {
  factory _$$ReadTodoImplCopyWith(
          _$ReadTodoImpl value, $Res Function(_$ReadTodoImpl) then) =
      __$$ReadTodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$ReadTodoImplCopyWithImpl<$Res>
    extends _$ReadTodoCopyWithImpl<$Res, _$ReadTodoImpl>
    implements _$$ReadTodoImplCopyWith<$Res> {
  __$$ReadTodoImplCopyWithImpl(
      _$ReadTodoImpl _value, $Res Function(_$ReadTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$ReadTodoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadTodoImpl implements _ReadTodo {
  _$ReadTodoImpl({required this.title});

  factory _$ReadTodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadTodoImplFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'ReadTodo(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadTodoImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadTodoImplCopyWith<_$ReadTodoImpl> get copyWith =>
      __$$ReadTodoImplCopyWithImpl<_$ReadTodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadTodoImplToJson(
      this,
    );
  }
}

abstract class _ReadTodo implements ReadTodo {
  factory _ReadTodo({required final String title}) = _$ReadTodoImpl;

  factory _ReadTodo.fromJson(Map<String, dynamic> json) =
      _$ReadTodoImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ReadTodoImplCopyWith<_$ReadTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
