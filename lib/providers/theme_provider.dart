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
    return Themes(
        themeMode: themeId == 0 ? ThemeMode.light : ThemeMode.dark,
        themeId: themeId);
  }

  toggle() {
    int themeId = 1 - state.themeId!;
    AppLocal.ins.appBox.put(ThemeConstants.theme, themeId);
    state = state.copyWith(
        themeMode: themeId == 0 ? ThemeMode.light : ThemeMode.dark,
        themeId: themeId);
  }
}

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
