import 'package:deckspace/modules/utils/string_utils.dart';

class CoreAssets {
  static String image(String fileName, {isPlatformSpecific = false}) {
    return '${_assetFolderPath('images', isPlatformSpecific)}/$fileName';
  }

  static String _assetFolderPath(String name, bool isPlatformSpecific) {
    var path = 'assets/$name';

    if (isPlatformSpecific) {
      path += '/${StringUtils.platformName()}';
    }

    return path;
  }
}
