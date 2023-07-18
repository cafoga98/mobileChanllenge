import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/launch_urls.dart';
import '/core/shared/utils/styles_repository.dart';
import '/features/comics/domain/entities/marvel_comic.dart';

class ComicCard extends StatelessWidget {
  final MarvelComic marvelComic;

  const ComicCard({
    Key? key,
    required this.marvelComic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(marvelComic.urls.isNotEmpty){
          LaunchNavigator.launch(url: marvelComic.urls[0]['url'].toString());
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 7.h),
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.sp,
            ),
          ),
          color: Colors.black54,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.h,
              width: 110.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    marvelComic.thumbnail['path'].toString(),
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(
                  10.sp,
                )),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.8,
              height: MediaQuery.of(context).size.height / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Text(
                            marvelComic.title,
                            textAlign: TextAlign.start,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: standardTitleComicStyle,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        marvelComic.creators.items.isEmpty
                            ? const SizedBox()
                            : Flexible(
                                flex: 1,
                                child: Text(
                                  '${S.current.author}: ${marvelComic.creators.items.first['name']}',
                                  style: standardAutorComicStyle,
                                ),
                              ),
                      ],
                    ),
                  ),
                  Text(S.current.moreInfo, style: standardInfoStyle,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
