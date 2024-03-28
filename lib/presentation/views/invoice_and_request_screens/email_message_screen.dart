import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/add_items_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/checkbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../navigation/navigation.dart';
import '../../../providers/invoice_request_provider.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';
import '../signup_screens/signup_widgets/text_field_widget.dart';

class EmailMessageScreen extends ConsumerWidget {
  static const String routeName = "EMAIL_MESSAGE_SCREEN";

  const EmailMessageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var invoiceRequestProviderW = ref.watch(invoiceRequestProvider);
    var invoiceRequestProviderR = ref.read(invoiceRequestProvider);

    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('email_message', context),
                description: getTranslated('email_message_subtitle', context),
                descriptionTextStyle: AppTextstyle.headingTextStyle(
                    fontSize: 14, color: AppColors.grey),
                imageicon: AppAssets.arrowLeft,
              ),
              18.spaceY,
              TextFieldWidget(
                hintText: getTranslated('enter_message', context),
                hintStyle: AppTextstyle.bodyTextStyle(color: AppColors.grey),
              ),
              Text(
                getTranslated('optional', context),
                style: AppTextstyle.headingTextStyle(
                  color: AppColors.grey,
                ),
              ),
              24.spaceY,
              CommonWhiteFlexibleCard(
                borderRadius: 8,
                padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                widget: CheckBoxWidget(
                  checkBoxValue:
                      invoiceRequestProviderW.emailMessageSetAsDefault,
                  title: getTranslated('set_as_default', context),
                  titleTextStyle: AppTextstyle.bodyTextStyle(
                      fontSize: 16, color: AppColors.black),
                  onChanged: (value) {
                    invoiceRequestProviderR.toggleEmailMessageSetAsDefault();
                  },
                ),
              )
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
                  getTranslated('save', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigation.pushNamed(AddItemsScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
