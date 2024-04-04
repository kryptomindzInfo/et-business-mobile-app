import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessDetailsWhiteContainerWidet extends ConsumerWidget {
  final String title;
  final Widget? icon;
  final VoidCallback? onTap;
  final Color? titleTextColor;
  final String? labelText;
  final String? image;
  final TextStyle? titleTextStyle;
  const BusinessDetailsWhiteContainerWidet(
      {super.key,
      required this.title,
      this.icon,
      this.onTap,
      this.titleTextColor,
      this.labelText,
      this.image,
      this.titleTextStyle});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: context.theme.colorTheme.transparentToColor,
            border: Border.all(color: context.theme.colorTheme.borderColor),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            )),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (labelText != null)
                Text(
                  labelText ?? 'country',
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.blackAndWhite),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          if (image != null) ...[
                            Image.asset(
                              image ?? AppAssets.accountconfirmation,
                              height: 42.h,
                              width: 42.w,
                            ),
                            16.spaceX
                          ],
                          Text(
                            title,
                            style: titleTextStyle ??
                                AppTextstyle.bodyTextStyle(
                                    fontSize: 16.sp,
                                    color: titleTextColor ??
                                        context.theme.colorTheme.blackAndWhite),
                          ),
                        ],
                      ),
                      if (icon != null)
                        if (icon != null) icon!
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
