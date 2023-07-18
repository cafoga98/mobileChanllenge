import 'dart:convert';

import 'package:http/http.dart';

import '/core/shared/config/connectivity_checker.dart';
import '/core/shared/error/error_message.dart';
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
        throw NoConnectionException(ErrorMessage.noConnection);
      }

      final response =
          await client.get(Uri.parse(uri), headers: headers).timeout(
        const Duration(seconds: 20),
        onTimeout: () {
          throw TimeOutException(ErrorMessage.timeOut);
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
          throw NoDataException(ErrorMessage.noData);
        }
      case 201:
        throw UnauthorisedException(ErrorMessage.unauthorised);
      case 400:
        throw BadRequestException(ErrorMessage.noData);
      case 500:
        throw ServerException(ErrorMessage.noData);
      default:
        throw NoDataException(ErrorMessage.noData);
    }
  }
}
