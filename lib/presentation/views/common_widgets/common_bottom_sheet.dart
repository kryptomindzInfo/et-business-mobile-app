import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';

showCommonModalSheet(BuildContext context, double height, Widget widget,
    {CrossAxisAlignment? crossAxisAlignment}) {
  return showModalBottomSheet(
    context: appContext,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: height,
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: context.theme.colorTheme.commonBottomSheetColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          border: Border(
              left: BorderSide(color: context.theme.colorTheme.borderColor),
              right: BorderSide(color: context.theme.colorTheme.borderColor),
              top: BorderSide(color: context.theme.colorTheme.borderColor))),
      child: Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: [
          10.spaceY,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 3.5,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.white),
              ),
            ],
          ),
          widget
        ],
      ),
    ),
  );
}
