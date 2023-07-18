import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/shared/utils/image_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/domain/bloc/drawer_bloc/drawer_bloc.dart';
import '/features/comics/domain/bloc/comic_bloc/comic_bloc.dart';
import '/features/comics/presentation/widgets/standard_drawer.dart';

class ComicSubPage extends StatelessWidget {
  ComicSubPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            context.read<DrawerBloc>().add(const DrawerEvent.started());
            _key.currentState!.openDrawer();
          },
          icon: const Icon(Icons.account_circle_outlined),
        ),
      ),
      drawer: const StandardDrawer(),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 110.h,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            margin: EdgeInsets.only(bottom: 10.h),
            child: Center(
              child: Image.asset(
                ImageRepository.marvelComicsBlue,
                height: 110.h,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    15.w,
                  ),
                  topRight: Radius.circular(
                    15.w,
                  ),
                ),
                color: ColorsRepository.celestialBlue,
              ),
              child: SingleChildScrollView(
                child: BlocBuilder<ComicBloc, ComicState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    comicListReceived: (comicList) {
                      return Center(
                        child: Wrap(
                          runSpacing: 5.h,
                          spacing: 5.w,
                          children: comicList,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
