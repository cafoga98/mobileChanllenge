import 'package:doublevchallenge/core/domain/bloc/drawer_bloc/drawer_bloc.dart';
import 'package:doublevchallenge/features/registration_form/domain/save_bloc/save_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/core/shared/auto_route/router.dart';
import '/core/shared/config/api_config.dart';
import '/core/shared/config/environment_config.dart';
import '/core/data/repository/implementation/local_storage_repository.dart';


class MyApp extends StatefulWidget {
  final GetIt getIt;
  final ApiConfig apiConfig;
  final EnvironmentConfig environmentConfig;

  const MyApp({
    Key? key,
    required this.getIt,
    required this.apiConfig,
    required this.environmentConfig,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: true,
      builder: (context, child) =>
          MultiRepositoryProvider(
            providers: [
              RepositoryProvider<LocalStorageRepository>(
                  create: (context) => widget.getIt<LocalStorageRepository>()
              ),
              RepositoryProvider<ApiConfig>(
                create: (context) => widget.apiConfig,
              ),
              RepositoryProvider<EnvironmentConfig>(
                create: (context) => widget.environmentConfig,
              )
            ],
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => SaveBloc(
                    localStorageRepository: context.read<LocalStorageRepository>(),
                  ),
                ),
                BlocProvider(
                  create: (context) => DrawerBloc(
                    localStorageRepository: context.read<LocalStorageRepository>(),
                  ),
                ),
              ],
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routeInformationParser:
                widget.getIt<AppRouter>().defaultRouteParser(),
                routerDelegate: widget.getIt<AppRouter>().delegate(),
                builder: (context, child) {
                  return Builder(
                    builder: (context) {
                      final mediaQuery = MediaQuery.of(context);
                      return MediaQuery(
                        data: mediaQuery.copyWith(
                          accessibleNavigation: false,
                        ),
                        child: child!,
                      );
                    },
                  );
                },
              ),
            ),
          ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

///Nos queda faltando organizar el mainCommond para inyectar las dependencias en MyApp
