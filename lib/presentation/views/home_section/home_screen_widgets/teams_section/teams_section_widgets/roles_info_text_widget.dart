import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/common_transparent_button.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RolesInfoTextWidget extends ConsumerWidget {
  final String? title;
  final String? subtitle;
  const RolesInfoTextWidget({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: context.theme.colorTheme.normalTextColor),
                ),
                Text(
                  subtitle!,
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                      overflow: TextOverflow.clip),
                )
              ],
            ),
          ),
          CommonGreyButton(
            title: getTranslated("view", context),
          )
        ],
      ),
    );
  }
}
