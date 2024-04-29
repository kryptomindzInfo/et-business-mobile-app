
import 'package:flutter/material.dart';

import 'app_theme.dart';

ThemeData lightTheme =
    ThemeData(
      primaryColor: Colors.black,
      brightness: Brightness.light, extensions: [AppTheme()]);
ThemeData darkTheme =
    ThemeData(brightness: Brightness.dark, extensions: [AppTheme.dark()]);