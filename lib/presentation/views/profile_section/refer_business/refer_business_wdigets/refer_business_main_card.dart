import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_wdigets/get_started_whole_container.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReferBusinessMainCard extends ConsumerWidget {
  const ReferBusinessMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          // height: 387,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              color: context.theme.colorTheme.transparentToGreen,
              border: Border.all(
                  color: context.theme.colorTheme.transparentToTeal)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              15.spaceY,
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppAssets.appbarLogo,
                      height: 40,
                      width: 135,
                    ),
                    Image.asset(
                      AppAssets.rocketImage,
                      height: 180,
                      width: 120,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 23,
                  right: 65,
                ),
                child: Text(
                  getTranslated("refer_for_faster", context),
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                      overflow: TextOverflow.clip),
                ),
              ),
              20.spaceY,
            ],
          ),
        ),
        const GetStartedSection(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
      ],
    );
  }
}
