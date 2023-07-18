import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/image_repository.dart';
import '/core/shared/utils/styles_repository.dart';
import '/core/domain/bloc/drawer_bloc/drawer_bloc.dart';

class StandardDrawer extends StatelessWidget {
  const StandardDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BlocBuilder<DrawerBloc, DrawerState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          data: (user) => ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 30.h,
                        backgroundColor: Colors.black38,
                        backgroundImage:
                            const AssetImage(ImageRepository.avengersLogo),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      S.current.welcome,
                      style: standardListTileTitle,
                    ),
                    Text(
                      '${user.name} ${user.lastName}',
                      style: standardListTileTitle,
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  S.current.yourInformation,
                  style: standardListTileTitle,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          S.current.birthdate,
                          style: standardListTileTitle,
                        ),
                        subtitle: Text(
                          DateFormat('MMMM dd - yyyy ').format(user.birthdate!),
                          style: standardListTitleSubTitle,
                        ),
                        onTap: null,
                      ),
                      ListTile(
                        title: Text(
                          S.current.registeredAddresses,
                          style: standardListTileTitle,
                        ),
                        subtitle: ListView.separated(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: user.addresses!.length,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(),
                            itemBuilder: (context, index) {
                              return Text(
                                user.addresses![index],
                                style: standardListTitleSubTitle,
                              );
                            }),
                        onTap: null,
                      ),
                    ],
                  ),
                ),
                onTap: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
