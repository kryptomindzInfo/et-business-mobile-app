import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_confirm_delivery_address.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetPlasticCardScreen extends ConsumerWidget {
  static const String routeName = "get_plastic_card_Screen";
  const GetPlasticCardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Scaffold(
          backgroundColor: context.theme.colorTheme.backgroundColor,
          appBar: const CommonAppBar(
            topPadding: 00,
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                20.spaceY,
                CommonWhiteFlexibleCard(
                  color: AppColors.transparent,
                  border: Border.all(
                    color: AppColors.transparent,
                  ),
                  widget: Column(
                    children: [
                      Image.asset(
                        AppAssets.greenplasticcard,
                        scale: 3,
                      ),
                      60.spaceY,
                      Text(
                        getTranslated("plastic_card", context),
                        style: AppTextstyle.headingTextStyle(
                            color: context.theme.colorTheme.normalTextColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      5.spaceY,
                      Text(
                        getTranslated("card_speciality", context),
                        textAlign: TextAlign.center,
                        style: AppTextstyle.headingTextStyle(
                            color: context.theme.colorTheme.whiteColor
                                .withOpacity(0.5),
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            overflow: TextOverflow.clip),
                      ),
                      // 20.spaceY,
                    ],
                  ),
                  // padding: const EdgeInsets.only(top: 30, right: 12, left: 12),
                ),
                78.spaceY,
                CommonButton(
                  width: 288,
                  title: getTranslated("get_plastic_card", context),
                  mainButtonColor: true
                      ? context.theme.colorTheme.buttonColor
                      : context.theme.colorTheme.buttonDisabledColor,
                  titleColor: context.theme.colorTheme.buttonTitleColor,
                  onpress: () {
                    Navigation.pushNamed(
                        SignupConfirmDeliveryAddress.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
