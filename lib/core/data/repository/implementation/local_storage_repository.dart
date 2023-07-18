import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/generated/l10n.dart';
import '/core/shared/error/failure.dart';
import '/core/domain/entities/user.dart';
import '/core/shared/error/exceptions.dart';
import '/core/data/repository/interfaces/local_storage_repository_interface.dart';

class LocalStorageRepository extends LocalStorageRepositoryInterface {
  final SharedPreferences sharedPreferences;

  LocalStorageRepository({required this.sharedPreferences});

  static const userKey = 'USER_KEY';

  @override
  Future<Either<Failure, User>> getLocalUser() async {
    try {
      final userJson = sharedPreferences.getString(userKey);
      User user = User.fromJson(
        json.decode(userJson!),
      );
      return right(user);
    } catch (e) {
      return left(Failure.noActionComplete(message: e.toString()));
    }
  }

  @override
  Future<bool> setLocalUser({required User user}) async {
    try {
      final userEncode = json.encode(user.toJson());
      return sharedPreferences
          .setString(userKey, userEncode)
          .catchError((onError) {
        throw NoSaveLocalStoreException(S.current.noSaveLocalData);
      }).timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeOutLocalStoreException(S.current.timeOutLocal);
      });
    } catch (e) {
      throw NoCompleteLocalStoreException(e.toString());
    }
  }
}
