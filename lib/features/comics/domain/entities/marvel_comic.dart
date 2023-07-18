import 'dart:core';
import 'package:json_annotation/json_annotation.dart';

import '/features/comics/domain/entities/marvel_creators.dart';

part 'marvel_comic.g.dart';

@JsonSerializable()
class MarvelComic {
  final int id;
  final String title;
  final List<Map> urls;
  final Map thumbnail;
  final Creators creators;

  MarvelComic(
    this.id,
    this.title,
    this.urls,
    this.thumbnail,
    this.creators,
  );

  factory MarvelComic.fromJson(Map<String, dynamic> json) =>
      _$MarvelComicFromJson(json);
}