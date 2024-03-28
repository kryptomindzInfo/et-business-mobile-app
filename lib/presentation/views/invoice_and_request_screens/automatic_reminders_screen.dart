import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/invoice_number_screen.dart';
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
import 'invoice_and_request_widgets/switch_button_widget.dart';

class AutomaticRemindersScreen extends ConsumerWidget {
  static const String routeName = "AUTOMATIC_REMINDERS_SCREEN";

  const AutomaticRemindersScreen({super.key});

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
                title: getTranslated('automatic_reminders_title', context),
                description:
                    getTranslated('automatic_reminders_subtitle', context),
                descriptionTextStyle: AppTextstyle.headingTextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                    overflow: TextOverflow.clip),
                imageicon: AppAssets.arrowLeft,
              ),
              18.spaceY,
              CommonWhiteFlexibleCard(
                borderRadius: 8,
                padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                widget: SwitchButtonWidget(
                  value: invoiceRequestProviderW.sendAutomaticReminders,
                  title: getTranslated('send_automatically_reminders', context),
                  titleTextStyle: AppTextstyle.bodyTextStyle(
                      fontSize: 16, color: AppColors.black),
                  onChanged: (value) {
                    invoiceRequestProviderR.toggleSendAutomaticReminders();
                  },
                ),
              ),
              24.spaceY,
              CommonWhiteFlexibleCard(
                borderRadius: 8,
                padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                widget: CheckBoxWidget(
                  checkBoxValue:
                      invoiceRequestProviderW.automaticRemindersSetAsDefault,
                  title: getTranslated('set_as_default', context),
                  titleTextStyle: AppTextstyle.bodyTextStyle(
                      fontSize: 16, color: AppColors.black),
                  onChanged: (value) {
                    invoiceRequestProviderR
                        .toggleAutomaticRemindersSetAsDefault();
                  },
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
                  getTranslated('save', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigation.pushNamed(InvoiceNumberScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
