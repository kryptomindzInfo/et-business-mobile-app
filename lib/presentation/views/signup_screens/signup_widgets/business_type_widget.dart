import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessTypeWidget extends ConsumerWidget {
  final String image;
  final String title;
  final String description;
  VoidCallback? onPressed;
  BusinessTypeWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 34.h,
            width: 34.w,
          ),
          16.spaceX,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextstyle.headingTextStyle(
                    fontSize: 16.sp,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 198.w,
                child: Text(
                  description,
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.grey, overflow: TextOverflow.clip),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
