import 'dart:core';
import 'package:json_annotation/json_annotation.dart';

part 'marvel_creators.g.dart';

@JsonSerializable()
class Creators{
  final List<Map> items;

  Creators(this.items);

  factory Creators.fromJson(Map<String, dynamic> json) =>
      _$CreatorsFromJson(json);
}
