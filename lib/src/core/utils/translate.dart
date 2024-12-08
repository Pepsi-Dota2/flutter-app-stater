import 'package:flutter/material.dart';
import '../constant/language.dart';

class LanguageProvider {
  Locale currentLocale = const Locale('en');
  void switchLanguage(LanguageEnum language) {
    switch (language) {
      case LanguageEnum.en:
        currentLocale = const Locale('en');
        break;
      case LanguageEnum.la:
        currentLocale = const Locale('la');
        break;
    }
  }
}
