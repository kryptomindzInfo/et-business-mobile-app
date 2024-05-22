import 'package:etbank_business_app/core/app_print.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/theme_constants.dart';
import '../resources/app_persistance/app_local.dart';

final themeProvider =
    NotifierProvider<ThemeProvider, Themes>(ThemeProvider.new);

class ThemeProvider extends Notifier<Themes> {
  @override
  Themes build() {
    int themeId =
        AppLocal.ins.appBox.get(ThemeConstants.theme, defaultValue: 0);
    return Themes(themeMode: themefromkey[themeId], themeId: themeId);
  }

  toggle() {
    int themeId = 1 - state.themeId!;
    AppLocal.ins.appBox.put(ThemeConstants.theme, themeId);
    state = state.copyWith(
        themeMode: themeId == 0 ? ThemeMode.light : ThemeMode.dark,
        themeId: themeId);
  }

  changeTheme(ThemeMode themeMode) {
    if (themeMode != state.themeMode) {
      console(themeMode);
      int themeId = themefromMode[themeMode]!;
      AppLocal.ins.appBox.put(ThemeConstants.theme, themeId);
      state = state.copyWith(themeMode: themeMode, themeId: themeId);
    }
  }
}

const Map<ThemeMode, int> themefromMode = {
  ThemeMode.light: 0,
  ThemeMode.dark: 1,
  ThemeMode.system: 2
};
const Map<int, ThemeMode> themefromkey = {
  0: ThemeMode.light,
  1: ThemeMode.dark,
  2: ThemeMode.system
};

class Themes {
  final ThemeMode? themeMode;
  final int? themeId;

  Themes({this.themeId, this.themeMode});

  Themes copyWith({ThemeMode? themeMode, int? themeId}) {
    return Themes(
        themeMode: themeMode ?? this.themeMode,
        themeId: themeId ?? this.themeId);
  }
}
