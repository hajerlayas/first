import 'package:first/app/provider/Status.dart';
import 'package:json_annotation/json_annotation.dart';

import 'Stuff.dart';
part 'Api.g.dart';

@JsonSerializable(nullable: false)
class Api {
  String username;
  String password;
  List<Stuff> stuff;
  Status status;

  Api({this.username, this.password, this.stuff, this.status});

  factory Api.fromJson(Map<String, dynamic> json) => _$ApiFromJson(json);
  Map<String, dynamic> toJson() => _$ApiToJson(this);
}
