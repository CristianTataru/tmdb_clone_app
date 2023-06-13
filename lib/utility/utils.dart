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

  static double removeTrailingZerosAndNumberfy(String n) {
    if (n.contains('.')) {
      return double.parse(n.replaceAll(RegExp(r"([.]*0+)(?!.*\d)"), ""));
    } else {
      return double.parse(n);
    }
  }
}

extension DoubleExtensions on double {
  String toStringWithoutTrailingZeros() {
    return truncateToDouble() == this ? toInt().toString() : toString();
  }
}

extension IntExtensions on int {
  String toMillionString() {
    final millionDouble = double.parse((this / 1000000).toStringAsFixed(2));
    return millionDouble.toStringWithoutTrailingZeros();
  }
}
