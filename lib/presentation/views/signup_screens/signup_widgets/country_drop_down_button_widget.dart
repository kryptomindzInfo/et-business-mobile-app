import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_colors.dart';

class CountryDropDownButtonWidget extends ConsumerWidget {
  final String? countryFlag;
  final String? countryName;
  final String? countryCode;

  final Function()? onTap;
  const CountryDropDownButtonWidget(
      {super.key,
      // required this.title,
      this.countryCode,
      this.countryFlag,
      this.countryName,
      required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100.h,
        decoration: BoxDecoration(
          color: context.theme.colorTheme.iconBgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          height: 50.h,
          child: Center(
            child: Row(
              children: [
                5.spaceX,
                Text(
                  countryFlag!,
                ),
                10.spaceX,
                Column(
                  children: [
                    Text(
                      countryName!,
                      style: AppTextstyle.bodyTextStyle(
                          color: context.theme.colorTheme.normalTextColor),
                    ),
                    Text(
                      countryCode!,
                      style: AppTextstyle.bodyTextStyle(
                          color: context.theme.colorTheme.normalTextColor),
                    ),
                  ],
                ),
                3.spaceX,
                Icon(
                  Icons.keyboard_arrow_down,
                  color: context.theme.colorTheme.normalTextColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
