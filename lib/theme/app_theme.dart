import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final Color primaryColor;
  final Color secondaryColor;
  final Color appbarTitleColor;
  final Color chipsColor;
  final Color activeChipColor;
  final Color pageIndicatorColor;
  final Color blackColor;
  final Color whiteColor;
  final Color backgroundColor;
  final Color yellowGreenColor;
  final Color cardBorderColor;
  final Color boldTextColor;
  final Color normalTextColor;
  final Color buttonColor;
  final Color borderColor;
  final Color buttonTitleColor;
  final Color titleColor;
  final Color blackAndWhite;
  final Color whiteAndBlack;
  final Color iconBgColor;
  final Color iconWithTitleColor;
  final Color cardColor;
  final Color transparentToColor;
  final Color normalButtonsColor;
  final Color buttonDisabledColor;
  final Color indigoToColor;
  final Color grassGreen;
  final Color disableButtonColor;
  final Color disableButtonTextColor;
  final Color normallyUsedTealColor;
  final Color greyDescription;
  final Color appBackgroundColor;

  // final Color scaffoldBgColor;
  // final Color headingColor;
  // final Color subHeadingColor;
  // final Color titleColor;
  // final Color subTitleColor;

  AppTheme(
      {this.primaryColor = AppColors.primaryColor,
      this.secondaryColor = AppColors.white,
      this.appbarTitleColor = AppColors.black,
      this.chipsColor = AppColors.baseGreenColor,
      this.pageIndicatorColor = AppColors.primaryColor,
      this.activeChipColor = AppColors.yellowGreen,
      this.blackColor = AppColors.black,
      this.whiteColor = AppColors.white,
      this.backgroundColor = AppColors.white,
      this.yellowGreenColor = AppColors.yellowGreen,
      this.cardBorderColor = AppColors.tealColor,
      this.boldTextColor = AppColors.yellowGreen,
      this.normalTextColor = AppColors.black,
      this.buttonColor = AppColors.yellowGreen,
      this.borderColor = AppColors.tealColor,
      this.buttonTitleColor = AppColors.black,
      this.titleColor = AppColors.yellowGreen,
      this.blackAndWhite = AppColors.black,
      this.whiteAndBlack = AppColors.white,
      this.iconBgColor = AppColors.tealColor,
      this.iconWithTitleColor = AppColors.black,
      this.cardColor = AppColors.black,
      this.transparentToColor = AppColors.black,
      this.normalButtonsColor = AppColors.black,
      this.buttonDisabledColor = AppColors.grey,
      this.indigoToColor = AppColors.indigo,
      this.grassGreen = AppColors.grassGreen,
      this.disableButtonColor = AppColors.continueButtonDisabledColor,
      this.disableButtonTextColor = AppColors.continueTextDisabledColor,
      this.normallyUsedTealColor = AppColors.tealColor,
      this.greyDescription = AppColors.grey,
      this.appBackgroundColor = AppColors.darkTeal

      // this.scaffoldBgColor=AppColors.lightGreyColor,
      // this.headingColor=AppColors.black,
      // this.subHeadingColor=AppColors.lightGreyColor,
      // this.titleColor=AppColors.darkGreyColor,
      // this.subTitleColor=AppColors.mediumGreyColor,
      });

  factory AppTheme.dark() {
    return AppTheme(
        primaryColor: AppColors.primaryColor,
        secondaryColor: AppColors.white,
        chipsColor: AppColors.tealColor,
        appbarTitleColor: AppColors.white,
        activeChipColor: AppColors.yellowGreen,
        blackColor: AppColors.black,
        whiteColor: AppColors.white,
        backgroundColor: AppColors.darkTeal,
        yellowGreenColor: AppColors.yellowGreen,
        cardBorderColor: AppColors.tealColor,
        boldTextColor: AppColors.yellowGreen,
        normalTextColor: AppColors.white,
        buttonColor: AppColors.yellowGreen,
        borderColor: AppColors.tealColor,
        buttonTitleColor: AppColors.black,
        titleColor: AppColors.yellowGreen,
        blackAndWhite: AppColors.white,
        whiteAndBlack: AppColors.black,
        iconBgColor: AppColors.tealColor,
        iconWithTitleColor: AppColors.white,
        cardColor: AppColors.white,
        transparentToColor: AppColors.transparent,
        normalButtonsColor: AppColors.tealColor,
        buttonDisabledColor: AppColors.grey,
        indigoToColor: AppColors.indigo,
        grassGreen: AppColors.grassGreen,
        disableButtonColor: AppColors.continueButtonDisabledColor,
        disableButtonTextColor: AppColors.continueTextDisabledColor,
        normallyUsedTealColor: AppColors.tealColor,
        greyDescription: AppColors.grey,
        appBackgroundColor: AppColors.darkTeal);
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
