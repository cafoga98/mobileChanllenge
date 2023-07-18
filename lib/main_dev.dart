import 'dart:async';

import 'package:doublevchallenge/core/shared/config/environment_config.dart';
import 'package:doublevchallenge/main_intermediary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: '.env.dev');

    final environmentConfig = EnvironmentConfig(
        environment: EnvironmentType.development.env,
        apiBase: dotenv.env['API_BASE']!);

    mainIntermediary(environmentConfig);
  }, (error, stack) {
    throw 'Error main.dev $error, stack $stack';
  });
}
