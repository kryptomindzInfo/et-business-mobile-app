import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/custom_text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserPersonalDetailsWidget extends ConsumerWidget {
  final String title;
  final Widget? icon;
  final VoidCallback? onTap;
  final Color? titleTextColor;
  final String hint;
  final bool? readOnly;
  final bool? enableInteraction;
  final TextEditingController controller;
  final TextStyle? hintStyle;
  final double? height;
  final Widget? suffixIcon;

  final TextStyle? titleTextStyle;
  const UserPersonalDetailsWidget(
      {super.key,
      required this.title,
      this.icon,
      this.onTap,
      this.titleTextColor,
      required this.hint,
      this.titleTextStyle,
      this.readOnly,
      this.enableInteraction,
      required this.controller,
      this.hintStyle,
      this.height,
      this.suffixIcon});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: context.theme.colorTheme.businessDetailsContainer,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            border:
                Border.all(color: context.theme.colorTheme.transparentToTeal)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 250.w,
                        child: CustomTextFiledWidget(
                          textStyle: AppTextstyle.bodyTextStyle(
                              color: context.theme.colorTheme.whiteColor),
                          controller: controller,
                          title: title,
                          hint: hint,
                          hintStyle: hintStyle,
                          padding: 0,
                          readOnly: readOnly ?? false,
                          enableInteraction: enableInteraction ?? true,
                          height: height,
                          suffixIcon: suffixIcon,
                        ),
                      ),
                    ],
                  ),
                  if (icon != null) icon!
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
