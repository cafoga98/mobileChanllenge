// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarvelComic _$MarvelComicFromJson(Map<String, dynamic> json) => MarvelComic(
      json['id'] as int,
      json['title'] as String,
      (json['urls'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      json['thumbnail'] as Map<String, dynamic>,
      Creators.fromJson(json['creators'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarvelComicToJson(MarvelComic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'urls': instance.urls,
      'thumbnail': instance.thumbnail,
      'creators': instance.creators,
    };
