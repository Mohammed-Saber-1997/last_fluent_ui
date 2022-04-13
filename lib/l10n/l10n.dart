import 'package:flutter/material.dart';

class L10n {
  static final languages = [
    const Locale('en'),
    const Locale('ar'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'ar':
        return '🇦🇪';
      case 'en':
      default:
        return '🇺🇸';
    }
  }

  static String getName(String code) {
    switch (code) {
      case 'ar':
        return 'عربي';
      case 'en':
      default:
        return 'English';
    }
  }
}
