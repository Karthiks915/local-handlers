// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteTodoImpl _$$WriteTodoImplFromJson(Map<String, dynamic> json) =>
    _$WriteTodoImpl(
      title: json['title'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$WriteTodoImplToJson(_$WriteTodoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'isCompleted': instance.isCompleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'dateModified': instance.dateModified?.toIso8601String(),
      'status': instance.status,
    };
