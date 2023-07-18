import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/shared/config/api_config.dart';
import '/core/shared/config/environment_config.dart';
import '/features/comics/domain/bloc/comic_bloc/comic_bloc.dart';
import '/features/comics/presentation/pages/comic_sub_page.dart';
import '/features/comics/data/services/implementation/comic_service.dart';
import '/features/comics/data/repositories/implementation/comic_repository.dart';

@RoutePage()
class ComicsPage extends StatelessWidget {
  const ComicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ComicRepository>(
          create: (context) => ComicRepository(
            marvelService: ComicService(
              context.read<ApiConfig>(),
              context.read<EnvironmentConfig>(),
            ),
          ),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ComicBloc(
              comicRepository: context.read<ComicRepository>(),
            )..add(const ComicEvent.started()),
          ),
        ],
        child: BlocListener<ComicBloc, ComicState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => false,
            error: (failure) => failure.when(
              serverFailure: (msg) => errorWidget(msg: msg, context: context),
              noData: (msg) => errorWidget(msg: msg, context: context),
              noActionComplete: (msg) =>
                  errorWidget(msg: msg, context: context),
              noConnection: (msg) => errorWidget(msg: msg, context: context),
            ),
          ),
          child: ComicSubPage(),
        ),
      ),
    );
  }

  void errorWidget({required String? msg, required BuildContext context}) {
    var snackBar = SnackBar(content: Text(msg!));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
