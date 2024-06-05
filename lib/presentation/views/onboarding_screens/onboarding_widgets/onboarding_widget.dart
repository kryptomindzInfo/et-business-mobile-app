import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isButtons;
  final String? image;
  final String? topImage;
  final String? topText;
  final Widget? widget;
  final double? scale;
  final Color? subTitleColor;
  final Color? topImageColor;
  final Color? topTextColor;

  const OnboardingWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      this.isButtons = false,
      this.image,
      this.widget,
      this.scale,
      this.subTitleColor,
      this.topImage,
      this.topText,
      this.topImageColor,
      this.topTextColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorTheme.backgroundColor,
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  120.spaceY,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  topImage ?? AppAssets.armouricon,
                                  scale: 2,
                                  color: topImageColor,
                                ),
                                5.spaceX,
                                Text(
                                  topText ?? getTranslated("account", context),
                                  style: AppTextstyle.bodyTextStyle(
                                      fontSize: 14,
                                      color: topTextColor ??
                                          context
                                              .theme.colorTheme.normalTextColor,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                AppAssets.crossicon,
                                color: context.theme.colorTheme.whiteColor,
                                scale: 3,
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          AppAssets.appbarLogo,
                          scale: 2,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: SizedBox(
                      width: 320.w,
                      child: Text(
                        getTranslated(title, context),
                        style: AppTextstyle.headingTextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                            color: context.theme.colorTheme.normalTextColor,
                            overflow: TextOverflow.clip),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      width: 317.w,
                      child: Text(
                        getTranslated(subtitle, context),
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: subTitleColor ??
                                context.theme.colorTheme.yellowToGrey,
                            overflow: TextOverflow.clip),
                      ),
                    ),
                  ),
                ],
              ),
              15.spaceY,
              if (image != null)
                SizedBox(
                    width: 390.w,
                    height: 391.h,
                    child: Image.asset(
                      image!,
                      width: scale != null ? 0 : 388.w,
                      height: scale != null ? 0 : 388.h,
                      scale: scale,
                    )),
            ],
          ),
          widget != null ? widget! : const SizedBox()
        ],
      ),
    );
  }
}
