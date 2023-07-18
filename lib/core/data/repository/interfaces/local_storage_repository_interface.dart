import 'package:dartz/dartz.dart';

import '/core/shared/error/failure.dart';
import '/core/domain/entities/user.dart';

abstract class LocalStorageRepositoryInterface{
  Future<Either<Failure, User>> getLocalUser();

  Future<bool> setLocalUser({required User user});
}