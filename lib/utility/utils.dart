import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future openLink({required String url}) => _launchUrl(url);

  static Future<void> _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      bool appInstalled = await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      if (!appInstalled) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault);
      }
    } else {
      throw "Could not launch URL";
    }
  }
}
