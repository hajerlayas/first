import 'package:json_annotation/json_annotation.dart';
part 'Status.g.dart';

@JsonSerializable(nullable: false)
class Status {
  bool isActive;
  int code;

  Status({this.code, this.isActive});

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
