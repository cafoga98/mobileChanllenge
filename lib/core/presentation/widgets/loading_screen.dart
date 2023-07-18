import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/shared/utils/styles_repository.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          runSpacing: 22.h,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 50.h,
                width: 50.h,
                child: const CircularProgressIndicator(
                  strokeWidth: 12,
                  backgroundColor: ColorsRepository.marvelRed,
                  valueColor: AlwaysStoppedAnimation<Color>(ColorsRepository.quartz),
                ),
              ),
            ),
            Text(S.current.loading, style: standardLoadingStyle,)
          ],
        ),
      ),
    );
  }
}
