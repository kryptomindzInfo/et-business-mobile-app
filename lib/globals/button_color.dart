import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:flutter/material.dart';

// Color buttonColor(bool value) => value
//     ? appContext.theme.colorTheme.disableButtonColor
//     : appContext.theme.colorTheme.yellowGreenColor;

// Color buttonTextColor(bool value) => value
//     ? appContext.theme.colorTheme.disableButtonTextColor
//     : appContext.theme.colorTheme.whiteAndBlack;

// Company and Individul Buttons Selection

Color companyButtonColor(bool value) =>
    value ? AppColors.primaryColor : AppColors.grey;

Color companyButtonTextColor(bool value) =>
    value ? AppColors.black : AppColors.white;
