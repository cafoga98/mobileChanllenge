import 'package:doublevchallenge/core/shared/utils/colors_repository.dart';
import 'package:doublevchallenge/core/shared/utils/styles_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StandardButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String title;


  const StandardButton({Key? key, required this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 20.h),
        padding: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.sp,
            ),
          ),
          color: ColorsRepository.marvelRed,
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: standardButtonStyle
          ),
        ),
      ),
    );
  }
}
