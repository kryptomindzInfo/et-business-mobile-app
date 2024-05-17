import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common_widgets/app_common_appbar.dart';

class NotificationScreen extends ConsumerWidget {
  static const String routeName = "Notification_screen";
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              10.spaceY,
              HeaderIconWithTitle(
                title: getTranslated("inbox", context),
                // imageicon: AppAssets.arrowLeft,
              ),
              200.spaceY,
              Image.asset(
                AppAssets.notifImage,
                width: 106,
                height: 124,
              ),
              96.spaceY,
              Text(
                getTranslated("caught_up", context),
                style: AppTextstyle.headingTextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white),
              ),
              27.spaceY,
              Text(
                getTranslated("check_back_later", context),
                textAlign: TextAlign.center,
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    overflow: TextOverflow.clip),
              )
            ],
          ),
        ),
      ),
    );
  }
}
