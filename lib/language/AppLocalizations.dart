import 'package:flutter/material.dart';
import '../language/BaseLanguage.dart';
import '../language/LanguageEn.dart';
import '../models/LanguageDataModel.dart';

import 'LanguageFr.dart';

class AppLocalizations extends LocalizationsDelegate<BaseLanguage> {
  const AppLocalizations();

  @override
  Future<BaseLanguage> load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn();
      case 'fr':
        return LanguageFr();
      default:
        return LanguageFr();
    }
  }

  @override
  bool isSupported(Locale locale) =>
      LanguageDataModel.languages().contains(locale.languageCode);

  @override
  bool shouldReload(LocalizationsDelegate<BaseLanguage> old) => false;
}
