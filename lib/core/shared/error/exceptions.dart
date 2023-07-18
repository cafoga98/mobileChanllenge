class ServerException implements Exception {
  final String? message;
  ServerException(this.message);
}

class NoDataException implements Exception {
  final String? message;
  NoDataException(this.message);
}

class NoConnectionException implements Exception {
  final String? message;
  NoConnectionException(this.message);
}

class BadRequestException implements Exception {
  final String? message;
  BadRequestException(this.message);
}

class UnauthorisedException implements Exception {
  final String? message;
  UnauthorisedException(this.message);
}

class TimeOutException implements Exception {
  final String? message;
  TimeOutException(this.message);
}

class NoSaveLocalStoreException implements Exception {
  final String? message;
  NoSaveLocalStoreException(this.message);
}

class TimeOutLocalStoreException implements Exception {
  final String? message;
  TimeOutLocalStoreException(this.message);
}

class NoCompleteLocalStoreException implements Exception {
  final String? message;
  NoCompleteLocalStoreException(this.message);
}

