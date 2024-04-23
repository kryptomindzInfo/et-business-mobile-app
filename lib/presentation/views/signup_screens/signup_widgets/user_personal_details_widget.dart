import 'package:etbank_business_app/constants/app_colors.dart';
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
      required this.controller});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            // color: AppColors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(color: context.theme.colorTheme.borderColor)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
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
                          controller: controller,
                          title: title,
                          hint: hint,
                          // backgroundColor: AppColors.white,
                          padding: 0,
                          readOnly: readOnly ?? false,
                          enableInteraction: enableInteraction ?? true,
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
