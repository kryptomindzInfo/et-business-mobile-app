import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
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
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  const BusinessDetailsWhiteContainerWidet(
      {super.key,
      required this.title,
      this.icon,
      this.onTap,
      this.titleTextColor,
      this.labelText,
      this.image,
      this.titleTextStyle,
      this.borderColor,
      this.padding});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: context.theme.colorTheme.businessDetailsContainer,
            border: Border.all(
                color: borderColor ??
                    context.theme.colorTheme.transparentToTealBorder),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            )),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (labelText != null)
                    Text(
                      labelText ?? 'country',
                      style: AppTextstyle.bodyTextStyle(
                          color:
                              context.theme.colorTheme.headerDescriptionColor),
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
                                IconContainer(
                                  image: image ?? AppAssets.accountconfirmation,
                                  bgColor: AppColors.tealColor,
                                ),
                                // Image.asset(
                                //   image ?? AppAssets.accountconfirmation,
                                //   scale: 2,
                                // ),

                                // Container(
                                //   height: 34,
                                //   width: 34,
                                // decoration: BoxDecoration(
                                //   shape: BoxShape.circle,
                                //   color: context.theme.colorTheme.blackColor
                                //       .withOpacity(0.5),
                                // image: DecorationImage(
                                //     image: AssetImage(
                                //       image ??
                                //           AppAssets.accountconfirmation,
                                //     ),
                                //     scale: 2),
                                // ),
                                // child: Image.asset(

                                //   height: 42.h,
                                //   width: 42.w,
                                // ),
                                // ),
                                16.spaceX
                              ],
                              Text(
                                title,
                                style: titleTextStyle ??
                                    AppTextstyle.bodyTextStyle(
                                        fontSize: 16.sp,
                                        color: titleTextColor ??
                                            context.theme.colorTheme
                                                .normalTextColor),
                              ),
                            ],
                          ),
                          // if (icon != null)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              if (icon != null) icon!,
            ],
          ),
        ),
      ),
    );
  }
}
