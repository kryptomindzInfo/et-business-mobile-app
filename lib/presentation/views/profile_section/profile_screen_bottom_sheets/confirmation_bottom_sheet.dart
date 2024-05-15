import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/terms_and_condition_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/get_plastic_card_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../common_widgets/header_icon_with_text.dart';

class ConfirmationBottomSheet extends ConsumerWidget {
  const ConfirmationBottomSheet({super.key, this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 720,
      decoration: const BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: HeaderIconWithTitle(
                imageicon: AppAssets.arrowLeftShort,
                title: getTranslated("confirmation", context),
                description: getTranslated("charge", context),
                // imageicon: AppAssets.arrowLeft,
                edgeinsets: const EdgeInsets.only(top: 20),
              ),
            ),
            40.spaceY,
            Container(
              height: 129,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: context.theme.colorTheme.borderColor)),
              child: Container(
                margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          getTranslated("monthly_sub", context),
                          style: AppTextstyle.roboto(
                              color: context.theme.colorTheme.normalTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          getTranslated("-£100", context),
                          style: AppTextstyle.headingTextStyle(
                              color: context.theme.colorTheme.normalTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    20.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          getTranslated("first_month", context),
                          style: AppTextstyle.roboto(
                              color: context.theme.colorTheme.normalTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          getTranslated("-£100 Free", context),
                          style: AppTextstyle.headingTextStyle(
                              color: context.theme.colorTheme.normalTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // 30.spaceY,
            const TermsAndConditionsText(),
            20.spaceY,
            PrimaryButton(
              height: 38,
              minwidth: 288,
              color: context.theme.colorTheme.buttonColor,
              text: Text(
                getTranslated("continue", context),
                style: AppTextstyle.headingTextStyle(
                    color: context.theme.colorTheme.buttonTitleColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              onPressed: onPressed ??
                  () {
                    Navigation.pushNamed(GetPlasticCardScreen.routeName);
                  },
            ),
          ],
        ),
      ),
    );
  }
}
