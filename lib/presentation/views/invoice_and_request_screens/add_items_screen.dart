import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/automatic_reminders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../navigation/navigation.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/app_common_appbar.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../sending_currency_screens/sending_currency_widgets/currency_textfield_widget.dart';
import '../sending_currency_screens/sending_currency_widgets/quantity_description_widget.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';

class AddItemsScreen extends ConsumerWidget {
  static const String routeName = "ADD_ITEMS_SCREEN";

  const AddItemsScreen({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('add_items', context),
                // imageicon: AppAssets.arrowLeft,
              ),
              18.spaceY,
              const CurrencyTextFieldWidget(),
              24.spaceY,
              const QuantityAndDescriptionWidget(),
              24.spaceY,
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  getTranslated('more_options', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.green, fontSize: 12),
                ),
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
                  getTranslated('add_items', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigation.pushNamed(AutomaticRemindersScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
