import '/features/comics/domain/entities/marvel_response.dart';

abstract class ComicServiceInterface {
  Future<MarvelResponse> fetchComics();
}
