import 'package:url_launcher/url_launcher.dart';

import '/generated/l10n.dart';

class LaunchNavigator{

  static Future<void> launch({required String url}) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('${S.current.noLaunch} $url');
    }
  }
}