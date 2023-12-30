import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_todo.freezed.dart';
part 'write_todo.g.dart';

@freezed
class WriteTodo with _$WriteTodo {
  factory WriteTodo({
    required String title,
    @Default(false) bool isCompleted,
    DateTime? createdAt,
    DateTime? dateModified,
    String? status,
  }) = _WriteTodo;

  factory WriteTodo.fromJson(Map<String, dynamic> json) =>
      _$WriteTodoFromJson(json);
}
