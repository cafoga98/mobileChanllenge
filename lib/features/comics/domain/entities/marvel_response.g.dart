// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarvelResponse<T> _$MarvelResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    MarvelResponse<T>(
      json['code'] as int,
      json['status'] as String,
      json['copyright'] as String,
      json['attributionText'] as String,
      json['attributionHTML'] as String,
      json['etag'] as String,
      DataMarvel<T>.fromJson(
          json['data'] as Map<String, dynamic>, (value) => fromJsonT(value)),
    );

Map<String, dynamic> _$MarvelResponseToJson<T>(
  MarvelResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHTML,
      'etag': instance.etag,
      'data': instance.data,
    };
