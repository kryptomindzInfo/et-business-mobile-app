import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessNotListedWidet extends ConsumerWidget {
  final String title;
  final VoidCallback? onTap;
  final Color? titleTextColor;
  final TextStyle? tilteStyle;
  final String? image;
  final bool? isRadioButton;

  const BusinessNotListedWidet(
      {super.key,
      required this.title,
      this.onTap,
      this.titleTextColor,
      this.tilteStyle,
      this.image,
      this.isRadioButton});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: 500,
        height: 60,
        // margin: EdgeInsets.only(left: 0, right: 0),
        // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
        decoration: BoxDecoration(
            // color: AppColors.white,

            color: context.theme.colorTheme.businessDetailsContainer,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            border:
                Border.all(color: context.theme.colorTheme.transparentToTeal)),
        child: Center(
          child: Row(
            children: [
              if (isRadioButton != null && isRadioButton == true)
                Radio(
                  toggleable: true,
                  activeColor: context.theme.colorTheme.primaryColor,
                  value: true,
                  groupValue:
                      ref.watch(signUpStateProvider).knownByDifferentName,
                  onChanged: (value) {
                    ref.read(signUpStateProvider).setknownByDifferentName();
                  },
                ),
              if (isRadioButton == null && isRadioButton != true) 25.spaceX,
              if (image != null)
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Image.asset(
                    image!,
                    height: 24.h,
                    width: 24.w,
                    color: context.theme.colorTheme.grassGreen,
                  ),
                ),
              Text(
                title,
                style: tilteStyle ??
                    AppTextstyle.bodyTextStyle(
                        fontSize: 16.sp,
                        color: titleTextColor ?? AppColors.baseGreenColor,
                        fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
