import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_theme.dart';

ThemeData lightTheme = ThemeData(
    splashColor: AppColors.transparent,
    highlightColor: AppColors.transparent,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.light)),
    extensions: [AppTheme()]);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    splashColor: AppColors.transparent,
    highlightColor: AppColors.transparent,
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.darkTeal,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: AppColors.darkTeal,
            systemNavigationBarIconBrightness: Brightness.dark)),
    extensions: [AppTheme.dark()]);
