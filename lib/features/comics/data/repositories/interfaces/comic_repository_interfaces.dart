import 'package:dartz/dartz.dart';

import '/core/shared/error/failure.dart';
import '/features/comics/domain/entities/data_marvel.dart';

abstract class ComicRepositoryInterfaces{
  Future<Either<Failure, DataMarvel>> getMarvelComics();
}