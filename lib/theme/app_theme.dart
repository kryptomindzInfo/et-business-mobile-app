import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final Color primaryColor;
  final Color secondaryColor;
  final Color appbarTitleColor;
  final Color chipsColor;
  // final Color scaffoldBgColor;
  // final Color headingColor;
  // final Color subHeadingColor;
  // final Color titleColor;
  // final Color subTitleColor;

  AppTheme({
    this.primaryColor = AppColors.primaryColor,
    this.secondaryColor = AppColors.white,
    this.appbarTitleColor=AppColors.primaryColor,
    this.chipsColor=AppColors.baseGreenColor,
    // this.scaffoldBgColor=AppColors.lightGreyColor,
    // this.headingColor=AppColors.black,
    // this.subHeadingColor=AppColors.lightGreyColor,
    // this.titleColor=AppColors.darkGreyColor,
    // this.subTitleColor=AppColors.mediumGreyColor,
  });

  factory AppTheme.dark() {
    return AppTheme(
      primaryColor: Colors.blue,
      secondaryColor: Colors.brown,
    );
  }

  @override
  ThemeExtension<AppTheme> copyWith({
    Color? appPrimaryColor,
    Color? appSecondaryColor,
  }) {
    return AppTheme(
      primaryColor: appPrimaryColor ?? primaryColor,
      secondaryColor: appSecondaryColor ?? secondaryColor,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    if (other == null || other is! AppTheme) {
      return this;
    }
    return AppTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
    );
  }
}
