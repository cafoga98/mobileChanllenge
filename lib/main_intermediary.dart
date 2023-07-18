import 'package:doublevchallenge/core/data/repository/implementation/local_storage_repository.dart';
import 'package:doublevchallenge/core/presentation/app.dart';
import 'package:doublevchallenge/core/shared/auto_route/router.dart';
import 'package:doublevchallenge/core/shared/config/api_config.dart';
import 'package:doublevchallenge/core/shared/config/connectivity_checker.dart';
import 'package:doublevchallenge/core/di/dependency_injection_config.dart';
import 'package:doublevchallenge/core/shared/config/environment_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

void mainIntermediary(
  EnvironmentConfig environmentConfig,
) async {
  await ScreenUtil.ensureScreenSize();

  await DependencyInjectionConfig.init();

  final instance = DependencyInjectionConfig.instance;

  final apiConfig = ApiConfig(
    connectivityChecker: instance<ConnectivityChecker>(),
    client: instance<Client>(),
  );

  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );

  runApp(
    MyApp(
      getIt: instance,
      apiConfig: apiConfig,
      environmentConfig: environmentConfig,
    ),
  );
}
