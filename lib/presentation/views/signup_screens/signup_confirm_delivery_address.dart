import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/common_transparent_button.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../sending_currency_screens/sending_currency_widgets/verified_bottom_sheet_widget.dart';

class SignupConfirmDeliveryAddress extends ConsumerWidget {
  static const String routeName = "Confirm_address_screen";
  const SignupConfirmDeliveryAddress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: Scaffold(
        backgroundColor: context.theme.colorTheme.backgroundColor,
        appBar: const CommonAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              HeaderIconWithTitle(
                title: getTranslated("confirm_delivery_address", context),
                description: getTranslated("free_company_card", context),
              ),
              30.spaceY,
              CommonWhiteFlexibleCard(
                color: context.theme.colorTheme.businessDetailsContainer,
                borderRadius: 12,
                padding: const EdgeInsets.only(top: 15, bottom: 20, right: 60),
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getTranslated("home_address", context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: context.theme.colorTheme.normalTextColor),
                    ),
                    22.spaceY,
                    Text(
                      "House No 12, 5th street, UK",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: context.theme.colorTheme.normalTextColor),
                    ),
                    68.spaceY,
                    CommonGreyButton(
                      title: getTranslated("change_delivery_address", context),
                      buttonColor:
                          context.theme.colorTheme.normallyUsedTealColor,
                      titleColor: AppColors.white,
                    ),
                  ],
                ),
              ),
              30.spaceY,
              CommonWhiteFlexibleCard(
                color: context.theme.colorTheme.businessDetailsContainer,
                borderRadius: 8,
                padding: const EdgeInsets.only(left: 0, bottom: 0, top: 0),
                widget: Row(
                  children: [
                    Checkbox(
                        activeColor: context.theme.colorTheme.blackColor,
                        value: ref.watch(signUpStateProvider).isPlaceOfBusiness,
                        onChanged: (val) {
                          ref
                              .watch(signUpStateProvider)
                              .isplaceOfBusinessOrNot(val!);
                        }),
                    Text(
                      getTranslated("primary_place", context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: context.theme.colorTheme.normalTextColor),
                    ),
                  ],
                ),
              ),
              220.spaceY,
              CommonButton(
                title: getTranslated("confirm", context),
                mainButtonColor: context.theme.colorTheme.buttonColor,
                titleColor: context.theme.colorTheme.buttonTitleColor,
                width: 288,
                onpress: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: context.theme.colorTheme.bottomSheetColor,
                    builder: (context) {
                      return VerifiedBottomSheetWidget(
                        title: Text(
                          getTranslated("order_free_card", context),
                          style: AppTextstyle.bodyTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: context.theme.colorTheme.whiteColor,
                          ),
                        ),
                        description: Text(
                          textAlign: TextAlign.center,
                          getTranslated("ship_card", context),
                          style: AppTextstyle.bodyTextStyle(
                            overflow: TextOverflow.clip,
                            color: context.theme.colorTheme.whiteColor,
                          ),
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
