// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Stuff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stuff _$StuffFromJson(Map<String, dynamic> json) {
  return Stuff(
    date: json['date'] as String,
    session: json['session'] as String,
  );
}

Map<String, dynamic> _$StuffToJson(Stuff instance) => <String, dynamic>{
      'session': instance.session,
      'date': instance.date,
    };
