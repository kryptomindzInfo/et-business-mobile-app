import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';

_showCommonModalSheet(double height, Widget widget) {
  return showModalBottomSheet(
    context: appContext,
    builder: (context) => Container(
      height: height,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          6.spaceY,
          Container(
            height: 3.5,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.white),
          ),
          widget
        ],
      ),
    ),
  );
}
