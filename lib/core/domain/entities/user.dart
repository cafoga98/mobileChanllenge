import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? name, lastName;
  List<String>? addresses;
  DateTime? birthdate;

  User({
    this.name,
    this.lastName,
    this.addresses,
    this.birthdate,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
