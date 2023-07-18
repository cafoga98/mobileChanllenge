import 'dart:convert';

import 'package:http/http.dart';

import '/generated/l10n.dart';
import '/core/shared/config/connectivity_checker.dart';
import '/core/shared/error/exceptions.dart';

class ApiConfig {
  final ConnectivityChecker connectivityChecker;
  final Client client;

  ApiConfig({
    required this.connectivityChecker,
    required this.client,
  });

  Future<dynamic> apiGet(
    String uri, {
    Map<String, String>? headers,
  }) async {
    try {
      ///Valid internet connection
      if (await connectivityChecker.checkingConnection() == false) {
        throw NoConnectionException(S.current.noConnection);
      }

      final response =
          await client.get(Uri.parse(uri), headers: headers).timeout(
        const Duration(seconds: 20),
        onTimeout: () {
          throw TimeOutException(S.current.timeOut);
        },
      );
      return _responseManager(response);
    } catch (e) {
      rethrow;
    }
  }

  _responseManager(Response response){
    switch(response.statusCode){
      case 200:
        if(response.body != null && response.body.toString().isNotEmpty){
          return json.decode(response.body);
        }else{
          throw NoDataException(S.current.noData);
        }
      case 201:
        throw UnauthorisedException(S.current.unauthorised);
      case 400:
        throw BadRequestException(S.current.noData);
      case 500:
        throw ServerException(S.current.noData);
      default:
        throw NoDataException(S.current.noData);
    }
  }
}
