import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color? borderColor;
  final Color textColor;
  final double borderRadius;
  final double width;
  final double height;

  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.backgroundColor = Colors.blue,
      this.textColor = Colors.white,
      this.borderRadius = 8.0,
      this.width = double.infinity,
      this.height = 50.0,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor ?? AppColors.white),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextstyle.bodyTextStyle(
              color: textColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
