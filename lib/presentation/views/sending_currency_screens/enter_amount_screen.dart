import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/sending_currency_widgets/trust_this_payee_bottom_sheet_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/app_common_appbar.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';
import 'sending_currency_widgets/currency_textfield_widget.dart';

class EnterAmountScreen extends ConsumerWidget {
  static const String routeName = "ENTER_AMOUNT";

  const EnterAmountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              HeaderIconWithTitle(
                // imageicon: AppAssets.arrowLeft,
                widget: Image.asset(
                  AppAssets.rkImgae,
                  height: 34,
                  width: 34,
                ),
                // trailingImage: AppAssets.rkImgae,
                // trailingImageHeight: 53,
                // trailingImageWidth: 53,
                rightPadding: 0,
              ),
              40.spaceY,
              const CurrencyTextFieldWidget(),
              16.spaceY,
              TextFieldWidget(
                hintText: getTranslated('reference', context),
                hintStyle: AppTextstyle.bodyTextStyle(
                    fontSize: 16, color: AppColors.grey),
                style: const TextStyle(color: AppColors.black),
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
                    isScrollControlled: true,
                    backgroundColor: AppColors.black,
                    context: context,
                    builder: (BuildContext context) {
                      return const TrustThisPayeeBottomSheetWidget();
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
