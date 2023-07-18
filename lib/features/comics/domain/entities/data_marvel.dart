import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'data_marvel.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class DataMarvel<T> {
  final int offset, limit, total, count;
  List<T> results;

  DataMarvel(
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  );

  factory DataMarvel.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$DataMarvelFromJson(json, fromJsonT);
}
