import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/billing_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_textstyle.dart';
import '../../../providers/invoice_request_provider.dart';
import '../../../providers/sending_currency_provider.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../sending_currency_screens/sending_currency_widgets/account_details_buttons_widget.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';
import '../signup_screens/signup_widgets/text_field_widget.dart';
import '../signup_screens/signup_widgets/user_personal_details_widget.dart';

class AddNewCustomerScreen extends ConsumerWidget {
  static const String routeName = "ADD_NEW_CUSTOMER";

  const AddNewCustomerScreen({super.key});

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
                title: getTranslated('add_new_customer', context),
                imageicon: AppAssets.arrowLeft,
              ),
              8.spaceY,
              AccountDetailsButtonsWidget(
                provider: invoiceRequestProvider,
              ),
              24.spaceY,
              TextFieldWidget(
                hintText: getTranslated('email', context),
                hintStyle: AppTextstyle.bodyTextStyle(color: AppColors.grey),
              ),
              16.spaceY,
              TextFieldWidget(
                hintText: getTranslated('full_name', context),
                hintStyle: AppTextstyle.bodyTextStyle(color: AppColors.grey),
              ),
              24.spaceY,
              UserPersonalDetailsWidget(
                readOnly: true,
                enableInteraction: false,
                controller:
                    ref.watch(sendingCurrencyProvider).countryController,
                title: getTranslated('*optional', context),
                hint: getTranslated('VAT_number', context),
                onTap: () {},
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
                  Navigation.pushNamed(BillingDetailsScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
