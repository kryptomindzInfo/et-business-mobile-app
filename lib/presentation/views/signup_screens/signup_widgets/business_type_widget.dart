import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessTypeWidget extends ConsumerWidget {
  final String image;
  final String title;
  final String? description;
  final VoidCallback? onPressed;
  final String? labelText;
  const BusinessTypeWidget(
      {super.key,
      required this.image,
      required this.title,
      this.description,
      this.onPressed,
      this.labelText});

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
              SizedBox(
                width: 260.w,
                child: Text(
                  title,
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 16.sp,
                      color: context.theme.colorTheme.normalTextColor,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.clip),
                ),
              ),
              if (description != null)
                SizedBox(
                  width: 230.w,
                  child: Text(
                    description ?? '',
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.greyDescription,
                        overflow: TextOverflow.clip),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
