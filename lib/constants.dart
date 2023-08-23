import 'package:flutter/material.dart';

enum BottomNavItems { overview, month, offers, settings }

extension BottomNavIcon on BottomNavItems {
  String getIconString() {
    switch (this) {
      case BottomNavItems.overview:
        return "assets/icons/overview.png";
      case BottomNavItems.month:
        return "assets/icons/month.png";
      case BottomNavItems.offers:
        return "assets/icons/offers.png";
      case BottomNavItems.settings:
        return "assets/icons/settings.png";
    }
  }
}

class AppColors {
  static Color neutral = const Color.fromRGBO(44, 38, 70, 1);
  static Color neutralLight = const Color.fromRGBO(144, 139, 166, 1);
  static Color neutralLight1 = const Color.fromRGBO(234, 233, 240, 1);
  static Color lightGrey = Colors.grey.withOpacity(0.15);
  static Color neutralLight2 = const Color.fromRGBO(252, 252, 253, 1);
  static Color neutralLight3 = const Color.fromRGBO(174, 171, 194, 1);
  static Color neutralLight4 = const Color.fromRGBO(144, 139, 166, 1);
  static Color appBlack = const Color.fromRGBO(23, 19, 40, 1);
  static Color primary = const Color.fromRGBO(99, 71, 235, 1);
  static Color secondary = const Color.fromRGBO(244, 96, 64, 1);
  static Color secondaryTwo = const Color.fromRGBO(86, 186, 218, 1);
  static Color orange = const Color.fromRGBO(248, 135, 54, 1);
  static Color greenAccent = const Color.fromRGBO(49, 180, 71, 1);
  static Color neutralDark = const Color.fromRGBO(19, 17, 23, 1);
  static Color iconGrey = const Color.fromRGBO(171, 168, 189, 1);
}
