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
  final Widget? widget;
  final double? scale;

  const OnboardingWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      this.isButtons = false,
      this.image,
      this.widget,
      this.scale});

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
                    padding: const EdgeInsets.only(left: 35, right: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    AppAssets.armouricon,
                                    scale: 2,
                                  ),
                                  5.spaceX,
                                  Text(
                                    getTranslated("account", context),
                                    style: AppTextstyle.bodyTextStyle(
                                        fontSize: 13,
                                        color: context
                                            .theme.colorTheme.normalTextColor,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigation.pop();
                              },
                              child: Image.asset(
                                AppAssets.crossicon,
                                scale: 3,
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          AppAssets.appbarLogo,
                          scale: 1.50,
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
                    height: 5.h,
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
                            color: context.theme.colorTheme.normalTextColor,
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
