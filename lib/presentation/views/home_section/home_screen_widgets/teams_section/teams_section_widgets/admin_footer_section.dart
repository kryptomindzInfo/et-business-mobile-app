import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminFooterSection extends ConsumerWidget {
  const AdminFooterSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getTranslated("payments", context),
          style: AppTextstyle.bodyTextStyle(
            fontSize: 16,
            color: context.theme.colorTheme.normalTextColor,
          ),
        ),
        20.spaceY,
        CommonWhiteFlexibleCard(
          color: context.theme.colorTheme.businessDetailsContainer,
          border: Border.all(
            color: context.theme.colorTheme.transparentToTeal,
          ),
          borderRadius: 8,
          widget: Column(
            children: [
              PrimaryButton(
                color: AppColors.yellowGreen,
                text: Text(
                  getTranslated("update_admin", context),
                  style: AppTextstyle.bodyTextStyle(
                    color: AppColors.black,
                  ),
                ),
                onPressed: () {},
                minwidth: double.infinity,
              ),
              24.spaceY,
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 32,
                          width: 33,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.yellowGreen,
                              image: const DecorationImage(
                                  image: AssetImage(
                                    AppAssets.arrowleft,
                                  ),
                                  scale: 2)),
                        ),
                        15.spaceX,
                        Text(
                          getTranslated("request", context),
                          style: AppTextstyle.headingTextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: context.theme.colorTheme.normalTextColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          AppAssets.greencheckround,
                          height: 18,
                        ),
                        15.spaceX,
                        Text(
                          "Full access",
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: context.theme.colorTheme.whiteColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
