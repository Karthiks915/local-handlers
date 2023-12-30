import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_todo.freezed.dart';
part 'read_todo.g.dart';

@freezed
class ReadTodo with _$ReadTodo {
  factory ReadTodo({
    required String title,
  }) = _ReadTodo;

  factory ReadTodo.fromJson(Map<String, dynamic> json) =>
      _$ReadTodoFromJson(json);
}
