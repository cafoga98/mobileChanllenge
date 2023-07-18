import 'package:dartz/dartz.dart';

import '/core/shared/error/failure.dart';
import '/core/shared/error/exceptions.dart';
import '/features/comics/domain/entities/data_marvel.dart';
import '/features/comics/domain/entities/marvel_comic.dart';
import '/features/comics/data/services/implementation/comic_service.dart';
import '/features/comics/data/repositories/interfaces/comic_repository_interfaces.dart';

class ComicRepository extends ComicRepositoryInterfaces {
  final ComicService marvelService;

  ComicRepository({
    required this.marvelService,
  });

  @override
  Future<Either<Failure, DataMarvel<MarvelComic>>> getMarvelComics() async {
    try {
      final response = await marvelService.fetchComics();
      return right(response.data);
    } on NoConnectionException catch (e) {
      return left(Failure.noConnection(message: e.message));
    } on NoDataException catch (e) {
      return left(Failure.noData(message: e.message));
    } catch (e) {
      return left(Failure.noActionComplete(message: e.toString()));
    }
  }
}
