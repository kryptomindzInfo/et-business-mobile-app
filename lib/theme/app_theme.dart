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
  final Color notNowButtonColor;
  final Color bottomSheetColor;
  final Color backgroundColor;
  final Color yellowGreenColor;
  final Color cardBorderColor;
  final Color boldTextColor;
  final Color yellowToBlackish;
  final Color blackishToYellow;
  final Color normalTextColor;
  final Color buttonColor;
  final Color borderColor;
  final Color buttonTitleColor;
  final Color titleColor;
  final Color blackAndWhite;
  final Color passCodeText;
  final Color otpText;
  final Color otpBlock;
  final Color passCodeBlock;
  final Color passCodeCursor;
  final Color whiteAndBlack;
  final Color iconBgColor;
  final Color greyToTeal;
  final Color tealToGrey;
  final Color greenToTeal;
  final Color yellowToGreen;
  final Color whiteToYellow;
  final Color whiteToTeal;
  final Color whiteToGreen;
  final Color greenToWhite;
  final Color tealToYellow;
  final Color iconWithTitleColor;
  final Color cardColor;
  final Color transparentToColor;
  final Color transparentToGreen;
  final Color transparentToTeal;
  final Color transparentToYellow;
  final Color businessDetailsContainer;
  final Color whiteTohalfWhite;
  final Color whiteToGrey;
  final Color normalButtonsColor;
  final Color buttonDisabledColor;
  final Color indigoToColor;
  final Color grassGreen;
  final Color disableButtonColor;
  final Color disableButtonTextColor;
  final Color normallyUsedTealColor;
  final Color greyDescription;
  final Color appBackgroundColor;
  final Color appBarColor;
  final Color headerDescriptionColor;
  final Color textfieldborderColor;
  final Color subGrayColor;
  final Color inActiveButtonColor;
  final Color whiteButtonTitleColor;
  final Color signUpContainerColor;
  final Color userIdentityContainer;
  final Color whiteButtonColor;
  final Color darkWhiteThemesheetColor;
  final Color yellowTextColor;
  final Color textGrassGreenColor;
  final Color iconColor;
  final Color commonBottomSheetColor;
  final Color redColor;
  final Color requestIconBGcolor;
  final Color buttonHalfWhiteText;

  // final Color scaffoldBgColor;
  // final Color headingColor;
  // final Color subHeadingColor;
  // final Color titleColor;
  // final Color subTitleColor;

  AppTheme({
    this.primaryColor = AppColors.grassGreen,
    this.secondaryColor = AppColors.white,
    this.appbarTitleColor = AppColors.black,
    this.chipsColor = AppColors.tealColor,
    this.pageIndicatorColor = AppColors.primaryColor,
    this.activeChipColor = AppColors.yellowGreen,
    this.blackColor = AppColors.black,
    this.whiteColor = AppColors.black,
    this.notNowButtonColor = AppColors.tealColor,
    this.bottomSheetColor = AppColors.white,
    this.backgroundColor = AppColors.white,
    this.yellowGreenColor = AppColors.yellowGreen,
    this.cardBorderColor = AppColors.tealColor,
    this.boldTextColor = AppColors.yellowGreen,
    this.yellowToBlackish = AppColors.blackish,
    this.blackishToYellow = AppColors.yellowGreen,
    this.normalTextColor = AppColors.black,
    this.buttonColor = AppColors.yellowGreen,
    this.borderColor = AppColors.black,
    this.buttonTitleColor = AppColors.black,
    this.titleColor = AppColors.yellowGreen,
    this.blackAndWhite = AppColors.white,
    this.passCodeText = AppColors.grey,
    this.otpText = AppColors.black,
    this.otpBlock = AppColors.halfWhite,
    this.passCodeBlock = AppColors.transparent,
    this.passCodeCursor = AppColors.black,
    this.whiteAndBlack = AppColors.black,
    this.iconBgColor = AppColors.halfWhite,
    this.greyToTeal = AppColors.halfWhite,
    this.tealToGrey = AppColors.tealColor,
    this.greenToTeal = AppColors.grassGreen,
    this.yellowToGreen = AppColors.grassGreen,
    this.whiteToYellow = AppColors.yellowGreen,
    this.whiteToTeal = AppColors.tealColor,
    this.whiteToGreen = AppColors.grassGreen,
    this.greenToWhite = AppColors.white,
    this.tealToYellow = AppColors.yellowGreen,
    this.iconWithTitleColor = AppColors.black,
    this.cardColor = AppColors.black,
    this.transparentToColor = AppColors.black,
    this.transparentToGreen = AppColors.grassGreen,
    this.transparentToTeal = AppColors.transparent,
    this.transparentToYellow = AppColors.transparent,
    this.businessDetailsContainer = AppColors.businessDetailsContainer,
    this.whiteTohalfWhite = AppColors.businessDetailsContainer,
    this.whiteToGrey = AppColors.iconGreyColor,
    this.normalButtonsColor = AppColors.black,
    this.buttonDisabledColor = AppColors.grey,
    this.indigoToColor = AppColors.indigo,
    this.grassGreen = AppColors.grassGreen,
    this.disableButtonColor = AppColors.continueButtonDisabledColor,
    this.disableButtonTextColor = AppColors.continueTextDisabledColor,
    this.normallyUsedTealColor = AppColors.tealColor,
    this.greyDescription = AppColors.grey,
    this.appBackgroundColor = AppColors.darkTeal,
    this.appBarColor = AppColors.white,
    this.headerDescriptionColor = AppColors.headerDescColorLight,
    this.textfieldborderColor = AppColors.yellowGreen,
    this.subGrayColor = AppColors.grey,
    this.inActiveButtonColor = AppColors.grey,
    this.whiteButtonTitleColor = AppColors.black,
    this.signUpContainerColor = AppColors.tealColor,
    this.userIdentityContainer = AppColors.grassGreen,
    this.whiteButtonColor = AppColors.white,
    this.darkWhiteThemesheetColor = AppColors.darkTeal,
    this.yellowTextColor = AppColors.yellowGreen,
    this.textGrassGreenColor = AppColors.grassGreen,
    this.iconColor = AppColors.white,
    this.commonBottomSheetColor = AppColors.white,
    this.redColor = AppColors.red,
    this.requestIconBGcolor = AppColors.darkGrassGreen,
    this.buttonHalfWhiteText = AppColors.halfWhite,

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
        notNowButtonColor: AppColors.white,
        bottomSheetColor: AppColors.black,
        backgroundColor: AppColors.darkTeal,
        yellowGreenColor: AppColors.yellowGreen,
        cardBorderColor: AppColors.tealColor,
        boldTextColor: AppColors.yellowGreen,
        yellowToBlackish: AppColors.yellowGreen,
        blackishToYellow: AppColors.blackish,
        normalTextColor: AppColors.white,
        buttonColor: AppColors.yellowGreen,
        borderColor: AppColors.tealColor,
        buttonTitleColor: AppColors.black,
        titleColor: AppColors.yellowGreen,
        otpText: AppColors.white,
        otpBlock: AppColors.transparent,
        passCodeBlock: AppColors.transparent,
        passCodeCursor: AppColors.white,
        blackAndWhite: AppColors.white,
        passCodeText: AppColors.white,
        whiteAndBlack: AppColors.black,
        iconBgColor: AppColors.tealColor,
        greyToTeal: AppColors.tealColor,
        tealToGrey: AppColors.grey,
        greenToTeal: AppColors.tealColor,
        yellowToGreen: AppColors.yellowGreen,
        whiteToYellow: AppColors.white,
        whiteToTeal: AppColors.white,
        whiteToGreen: AppColors.white,
        greenToWhite: AppColors.grassGreen,
        tealToYellow: AppColors.tealColor,
        iconWithTitleColor: AppColors.white,
        cardColor: AppColors.white,
        transparentToColor: AppColors.transparent,
        transparentToGreen: AppColors.transparent,
        transparentToTeal: AppColors.tealColor,
        transparentToYellow: AppColors.yellowGreen,
        businessDetailsContainer: AppColors.transparent,
        whiteTohalfWhite: AppColors.white,
        whiteToGrey: AppColors.white,
        normalButtonsColor: AppColors.tealColor,
        buttonDisabledColor: AppColors.grey,
        indigoToColor: AppColors.indigo,
        grassGreen: AppColors.grassGreen,
        disableButtonColor: AppColors.continueButtonDisabledColor,
        disableButtonTextColor: AppColors.continueTextDisabledColor,
        normallyUsedTealColor: AppColors.tealColor,
        greyDescription: AppColors.grey,
        appBackgroundColor: AppColors.darkTeal,
        appBarColor: AppColors.darkTeal,
        headerDescriptionColor: AppColors.headerDescColor,
        textfieldborderColor: AppColors.yellowGreen,
        subGrayColor: AppColors.grey,
        inActiveButtonColor: AppColors.grey,
        whiteButtonTitleColor: AppColors.black,
        signUpContainerColor: AppColors.tealColor,
        userIdentityContainer: AppColors.tealColor,
        whiteButtonColor: AppColors.white,
        darkWhiteThemesheetColor: AppColors.darkTeal,
        yellowTextColor: AppColors.yellowGreen,
        textGrassGreenColor: AppColors.grassGreen,
        iconColor: AppColors.white,
        commonBottomSheetColor: AppColors.darkTeal,
        redColor: AppColors.red,
        requestIconBGcolor: AppColors.darkGrassGreen);
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
      // primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      // secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      chipsColor: Color.lerp(chipsColor, other.chipsColor, t)!,
      appbarTitleColor:
          Color.lerp(appbarTitleColor, other.appbarTitleColor, t)!,
      activeChipColor: Color.lerp(activeChipColor, other.activeChipColor, t)!,
      blackColor: Color.lerp(blackColor, other.blackColor, t)!,
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t)!,
      notNowButtonColor:
          Color.lerp(notNowButtonColor, other.notNowButtonColor, t)!,
      bottomSheetColor:
          Color.lerp(bottomSheetColor, other.bottomSheetColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      yellowGreenColor:
          Color.lerp(yellowGreenColor, other.yellowGreenColor, t)!,
      cardBorderColor: Color.lerp(cardBorderColor, other.cardBorderColor, t)!,
      boldTextColor: Color.lerp(boldTextColor, other.boldTextColor, t)!,
      yellowToBlackish:
          Color.lerp(yellowToBlackish, other.yellowToBlackish, t)!,
      blackishToYellow:
          Color.lerp(blackishToYellow, other.blackishToYellow, t)!,
      normalTextColor: Color.lerp(normalTextColor, other.normalTextColor, t)!,
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      buttonTitleColor:
          Color.lerp(buttonTitleColor, other.buttonTitleColor, t)!,
      titleColor: Color.lerp(titleColor, other.titleColor, t)!,
      otpText: Color.lerp(otpText, other.otpText, t)!,
      otpBlock: Color.lerp(otpBlock, other.otpBlock, t)!,
      passCodeBlock: Color.lerp(passCodeBlock, other.passCodeBlock, t)!,
      passCodeCursor: Color.lerp(passCodeCursor, other.passCodeCursor, t)!,
      blackAndWhite: Color.lerp(blackAndWhite, other.blackAndWhite, t)!,
      passCodeText: Color.lerp(passCodeText, other.passCodeText, t)!,
      whiteAndBlack: Color.lerp(whiteAndBlack, other.whiteAndBlack, t)!,
      iconBgColor: Color.lerp(iconBgColor, other.iconBgColor, t)!,
      greyToTeal: Color.lerp(greyToTeal, other.greyToTeal, t)!,
      tealToGrey: Color.lerp(tealToGrey, other.tealToGrey, t)!,
      greenToTeal: Color.lerp(greenToTeal, other.greenToTeal, t)!,
      yellowToGreen: Color.lerp(yellowToGreen, other.yellowToGreen, t)!,
      whiteToYellow: Color.lerp(whiteToYellow, other.whiteToYellow, t)!,
      whiteToTeal: Color.lerp(whiteToTeal, other.whiteToTeal, t)!,
      whiteToGreen: Color.lerp(whiteToGreen, other.whiteToGreen, t)!,
      tealToYellow: Color.lerp(tealToYellow, other.tealToYellow, t)!,
      iconWithTitleColor:
          Color.lerp(iconWithTitleColor, other.iconWithTitleColor, t)!,
      cardColor: Color.lerp(cardColor, other.cardColor, t)!,
      transparentToColor:
          Color.lerp(transparentToColor, other.transparentToColor, t)!,
      transparentToGreen:
          Color.lerp(transparentToGreen, other.transparentToGreen, t)!,
      businessDetailsContainer: Color.lerp(
          businessDetailsContainer, other.businessDetailsContainer, t)!,
      whiteTohalfWhite:
          Color.lerp(whiteTohalfWhite, other.whiteTohalfWhite, t)!,
      whiteToGrey: Color.lerp(whiteToGrey, other.whiteToGrey, t)!,
      normalButtonsColor:
          Color.lerp(normalButtonsColor, other.normalButtonsColor, t)!,
      buttonDisabledColor:
          Color.lerp(buttonDisabledColor, other.buttonDisabledColor, t)!,
      indigoToColor: Color.lerp(indigoToColor, other.indigoToColor, t)!,
      grassGreen: Color.lerp(grassGreen, other.grassGreen, t)!,
      disableButtonColor:
          Color.lerp(disableButtonColor, other.disableButtonColor, t)!,
      disableButtonTextColor:
          Color.lerp(disableButtonTextColor, other.disableButtonTextColor, t)!,
      normallyUsedTealColor:
          Color.lerp(normallyUsedTealColor, other.normallyUsedTealColor, t)!,
      greyDescription: Color.lerp(greyDescription, other.greyDescription, t)!,
      appBackgroundColor:
          Color.lerp(appBackgroundColor, other.appBackgroundColor, t)!,
      appBarColor: Color.lerp(appBarColor, other.appBarColor, t)!,
      headerDescriptionColor:
          Color.lerp(headerDescriptionColor, other.headerDescriptionColor, t)!,
      textfieldborderColor:
          Color.lerp(textfieldborderColor, other.textfieldborderColor, t)!,
      subGrayColor: Color.lerp(subGrayColor, other.subGrayColor, t)!,
      inActiveButtonColor:
          Color.lerp(inActiveButtonColor, other.inActiveButtonColor, t)!,
      whiteButtonTitleColor:
          Color.lerp(whiteButtonTitleColor, other.whiteButtonTitleColor, t)!,
      signUpContainerColor:
          Color.lerp(signUpContainerColor, other.signUpContainerColor, t)!,
      userIdentityContainer:
          Color.lerp(userIdentityContainer, other.userIdentityContainer, t)!,
      whiteButtonColor:
          Color.lerp(whiteButtonColor, other.whiteButtonColor, t)!,
      darkWhiteThemesheetColor: Color.lerp(
          darkWhiteThemesheetColor, other.darkWhiteThemesheetColor, t)!,
      yellowTextColor: Color.lerp(yellowTextColor, other.yellowTextColor, t)!,
      textGrassGreenColor:
          Color.lerp(textGrassGreenColor, other.textGrassGreenColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      commonBottomSheetColor:
          Color.lerp(commonBottomSheetColor, other.commonBottomSheetColor, t)!,
      redColor: Color.lerp(redColor, other.redColor, t)!,
      requestIconBGcolor:
          Color.lerp(requestIconBGcolor, other.requestIconBGcolor, t)!,
    );
  }
}
