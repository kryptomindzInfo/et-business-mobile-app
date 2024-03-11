import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

Color buttonColor(bool value) =>
    value ? AppColors.continueButtonDisabledColor : AppColors.primaryColor;

Color buttonTextColor(bool value) =>
    value ? AppColors.continueTextDisabledColor : AppColors.black;
