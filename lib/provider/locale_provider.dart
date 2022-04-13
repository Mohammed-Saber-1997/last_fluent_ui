import 'package:flutter/material.dart';
import '../l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  late Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.languages.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }
}