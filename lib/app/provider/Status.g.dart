// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) {
  return Status(
    code: json['code'] as int,
    isActive: json['isActive'] as bool,
  );
}

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'isActive': instance.isActive,
      'code': instance.code,
    };
