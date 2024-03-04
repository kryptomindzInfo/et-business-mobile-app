import 'package:flutter/widgets.dart';

import 'app_colors.dart';

class AppTextstyle {
  static headingTextStyle(
          {FontWeight fontWeight = FontWeight.normal,
          double fontSize = 14,
          Color color = AppColors.black}) =>
      _normalText(
          fontFamily: 'Sora',
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color);
  static bodyTextStyle(
          {FontWeight fontWeight = FontWeight.normal,
          double fontSize = 14,
          Color color = AppColors.black}) =>
      _normalText(
          fontFamily: 'WorkSans',
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color);

  static TextStyle _normalText(
          {required String fontFamily,
          FontWeight fontWeight = FontWeight.normal,
          double fontSize = 14,
          Color color = AppColors.black}) =>
      TextStyle(
          fontFamily: '',
          fontWeight: fontWeight,
          fontSize: fontSize,
          overflow: TextOverflow.ellipsis,
          color: color);
}
