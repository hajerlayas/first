// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Api _$ApiFromJson(Map<String, dynamic> json) {
  return Api(
    username: json['username'] as String,
    password: json['password'] as String,
    stuff: (json['stuff'] as List)
        .map((e) => Stuff.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: Status.fromJson(json['status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApiToJson(Api instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'stuff': instance.stuff,
      'status': instance.status,
    };
