// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_marvel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataMarvel<T> _$DataMarvelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataMarvel<T>(
      json['offset'] as int,
      json['limit'] as int,
      json['total'] as int,
      json['count'] as int,
      (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$DataMarvelToJson<T>(
  DataMarvel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results.map(toJsonT).toList(),
    };
