import 'dart:core';
import 'package:json_annotation/json_annotation.dart';

import '/features/comics/domain/entities/data_marvel.dart';

part 'marvel_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class MarvelResponse<T> {
  final int code;
  final String status, copyright, attributionText, attributionHTML, etag;
  final DataMarvel<T> data;

  MarvelResponse(
    this.code,
    this.status,
    this.copyright,
    this.attributionText,
    this.attributionHTML,
    this.etag,
    this.data,
  );

  factory MarvelResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$MarvelResponseFromJson(json, fromJsonT);
}
