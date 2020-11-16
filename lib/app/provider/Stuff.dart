import 'package:json_annotation/json_annotation.dart';
part 'Stuff.g.dart';

@JsonSerializable(nullable: false)
class Stuff {
  String session;
  String date;

  Stuff({this.date, this.session});

  factory Stuff.fromJson(Map<String, dynamic> json) => _$StuffFromJson(json);
  Map<String, dynamic> toJson() => _$StuffToJson(this);
}
