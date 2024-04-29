import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReviewDocWidget extends ConsumerWidget {
  const ReviewDocWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getTranslated("new_doc", context),
          style: AppTextstyle.headingTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: context.theme.colorTheme.normalTextColor),
        ),
        CommonWhiteFlexibleCard(
          widget: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconContainer(
                image: AppAssets.letterhead,
              ),
              8.spaceX,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Companies_house_document.pdf",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: context.theme.colorTheme.normalTextColor,
                          overflow: TextOverflow.clip),
                    ),
                    Text(
                      "0.1 MB",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: context.theme.colorTheme.normalTextColor),
                    )
                  ],
                ),
              ),
              5.spaceX,
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  AppAssets.greendeleteicon,
                  scale: 2,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
