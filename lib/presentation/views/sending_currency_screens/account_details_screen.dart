import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/sending_currency_widgets/payment_notification_bottom_sheet_widget.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/sending_currency_widgets/verified_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_textstyle.dart';
import '../../../providers/sending_currency_provider.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';
import '../signup_screens/signup_widgets/text_field_widget.dart';
import '../signup_screens/signup_widgets/user_personal_details_widget.dart';
import 'sending_currency_widgets/account_details_buttons_widget.dart';

class AccountDetailsScreen extends ConsumerWidget {
  static const String routeName = "ACCOUNT_DETAILS";

  const AccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('account_details', context),
                imageicon: AppAssets.arrowLeft,
              ),
              8.spaceY,
              AccountDetailsButtonsWidget(
                provider: sendingCurrencyProvider,
              ),
              32.spaceY,
              UserPersonalDetailsWidget(
                readOnly: true,
                enableInteraction: false,
                controller:
                    ref.watch(sendingCurrencyProvider).countryController,
                title: getTranslated('country', context),
                hint: getTranslated('united_kingdom', context),
                onTap: () {},
              ),
              16.spaceY,
              UserPersonalDetailsWidget(
                readOnly: true,
                enableInteraction: false,
                controller:
                    ref.watch(sendingCurrencyProvider).currencyController,
                title: getTranslated('currency', context),
                hint: getTranslated('british_pound', context),
                onTap: () {},
              ),
              16.spaceY,
              UserPersonalDetailsWidget(
                readOnly: true,
                enableInteraction: false,
                controller:
                    ref.watch(sendingCurrencyProvider).accountNoController,
                title: getTranslated('account_number', context),
                hint: getTranslated('##############', context),
                onTap: () {},
              ),
              16.spaceY,
              TextFieldWidget(
                hintText: getTranslated('sort_code', context),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ButtonBottomNavigationWidget(
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: PrimaryButton(
                color: AppColors.green,
                text: Text(
                  getTranslated('continue', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: AppColors.black,
                              context: context,
                              builder: (BuildContext context) {
                                return const PaymentNotificationBottomSheetWidget();
                              });
                        },
                        child: VerifiedBottomSheetWidget(
                          title: Text(
                            getTranslated(
                                "account_name_matched_title", context),
                            style: AppTextstyle.bodyTextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          description: Text(
                            textAlign: TextAlign.center,
                            getTranslated(
                                "account_name_matched_subtitle", context),
                            style: AppTextstyle.bodyTextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
