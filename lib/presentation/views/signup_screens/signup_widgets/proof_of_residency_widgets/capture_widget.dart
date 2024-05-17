import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_textstyle.dart';

class CaptureWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function()? onTap;

  const CaptureWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: AppTextstyle.headingTextStyle(
                fontSize: 20, color: AppColors.white),
          ),
          8.spaceY,
          Text(
            textAlign: TextAlign.center,
            subTitle,
            style: AppTextstyle.headingTextStyle(
                fontSize: 16,
                color: AppColors.white,
                overflow: TextOverflow.clip),
          ),
          50.spaceY,
          GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: AppColors.white,
              child: CircleAvatar(
                radius: 26,
                backgroundColor: AppColors.white,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.black, width: 2),
                      shape: BoxShape.circle),
                ),
              ),
            ),
          ),
          30.spaceY,
        ],
      ),
    );
  }
}
