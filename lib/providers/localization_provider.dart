// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hive/hive.dart';

import '../constants/lang_constants.dart';
import '../api_resources/api_models/language_model.dart';

final localizationProvider = ChangeNotifierProvider<LocalizationProvider>(
    (ref) => LocalizationProvider());

class LocalizationProvider extends ChangeNotifier {
  LocalizationProvider() {
    _loadCurrentLanguage();
  }
  // final Box _hive = Hive.box(AppBoxes.appBox);
  int _languageIndex = 0;
  Locale _locale = Locale(LangConstants.languages[0].languageCode,
      LangConstants.languages[0].countryCode);

  Locale get locale => _locale;
  int get languageIndex => _languageIndex;

  void _loadCurrentLanguage() async {
    _languageIndex = 0;
    // _hive.get(LangConstants.languageIndex, defaultValue: _languageIndex);
    LanguageModel lang = LangConstants.languages.elementAt(_languageIndex);
    _locale = Locale(lang.languageCode, lang.countryCode);
    notifyListeners();
  }

  void setLanguage(int langIndex) {
    LanguageModel lang = LangConstants.languages.elementAt(langIndex);
    _locale = Locale(lang.languageCode, lang.countryCode);
    // _hive.put(LangConstants.languageIndex, langIndex);
    _languageIndex = langIndex;
    notifyListeners();
  }
}
