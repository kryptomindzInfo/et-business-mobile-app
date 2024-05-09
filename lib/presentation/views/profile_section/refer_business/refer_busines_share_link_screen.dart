import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_wdigets/refer-business_share_main_card.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_wdigets/share_link_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../resources/localization/language_constrants.dart';
import '../../common_widgets/app_common_appbar.dart';

class ReferBusinessShareLinkScreen extends ConsumerWidget {
  static const String routeName = 'ReferBusinessShareLink_Screen';
  const ReferBusinessShareLinkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                // imageicon: AppAssets.arrowLeft,
                title: getTranslated("refer_business", context),
                description:
                    getTranslated("get_unlimited_free_transfer", context),
              ),
              10.spaceY,
              ShareLinkButton(
                onpress: () {},
              ),
              30.spaceY,
              const ReferBusinessShareLinkMainCard()
            ],
          ),
        ),
      ),
    );
  }
}
