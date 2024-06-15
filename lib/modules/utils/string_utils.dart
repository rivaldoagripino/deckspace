import 'dart:io';

class StringUtils {
  static String platformName() {
    if (Platform.isAndroid) {
      return 'Android';
    }
    return 'Ios';
  }
}
