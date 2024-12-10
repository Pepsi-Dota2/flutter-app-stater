import 'dart:ui';

import 'package:flutter_app_stater/src/core/constant/constant_colors.dart';

enum DataStatus { initial, loading, success, failure, error }

enum Gender { male, female, other }

enum NavbarItem {
  home,
  message,
  profile,
}

enum CategoryType {
  dental,
  heart,
  brain,
  bone,
  eye;
  Color get backgroundColor {
    switch (this) {
      case CategoryType.dental:
        return AppColors.lightBlue; // Light pink
      case CategoryType.heart:
        return AppColors.lightprink; // Light blue
      case CategoryType.brain:
        return AppColors.lightRed; // Light green
      case CategoryType.bone:
        return AppColors.lightGreen; // Light orange
      case CategoryType.eye:
        return AppColors.lightOrange; // Light gray
    }
  }
}
