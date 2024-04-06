import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/director_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_textstyle.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../sending_currency_screens/sending_currency_widgets/show_account_details_widget.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';
import 'invoice_and_request_widgets/name_circle_widget.dart';

class MarkAsPaidScreen extends ConsumerWidget {
  static const String routeName = "MARK_AS_PAID";

  const MarkAsPaidScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderIconWithTitle(
                  title: getTranslated('£3', context),
                  imageicon: AppAssets.arrowLeft,
                ),
                35.spaceY,
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    getTranslated('time', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: AppColors.white, fontSize: 14),
                  ),
                ),
                20.spaceY,
                Row(
                  children: [
                    DirectorButtonWidget(
                      buttonColor: AppColors.green,
                      leadingImage: AppAssets.tick,
                      title: getTranslated('mark_as_Paid', context),
                      titleTextStyle: AppTextstyle.bodyTextStyle(
                          fontSize: 16, color: AppColors.black),
                    ),
                    12.spaceX,
                    DirectorButtonWidget(
                      buttonColor: AppColors.green,
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                      title: getTranslated('...', context),
                      titleTextStyle: AppTextstyle.bodyTextStyle(
                          fontSize: 16, color: AppColors.black),
                    ),
                  ],
                ),
                25.spaceY,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  child: const Column(
                    children: [
                      ShowAccountDetailsWidget(
                        title: 'status',
                        subTitle: 'sent',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'invoice_number',
                        subTitle: 'INV-2',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'due',
                        subTitle: 'Feb 28, 2022',
                      ),
                    ],
                  ),
                ),
                20.spaceY,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  child: const Column(
                    children: [
                      ShowAccountDetailsWidget(
                        title: 'bill_to',
                      ),
                      NameCircleWidget(
                        leadingText: 'RK',
                        name: "Rig Mark",
                      ),
                    ],
                  ),
                ),
                20.spaceY,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ShowAccountDetailsWidget(
                        title: 'email_message',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          getTranslated(
                              'please_see_the_attached_invoice', context),
                          style: AppTextstyle.bodyTextStyle(fontSize: 16),
                        ),
                      ),
                      32.spaceY,
                    ],
                  ),
                ),
                20.spaceY,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  child: Column(
                    children: [
                      const ShowAccountDetailsWidget(
                        title: 'items',
                      ),
                      const NameCircleWidget(
                        leadingText: 'C',
                        name: "consulting",
                        trailingText: "£3",
                        trailingHintText: '1 *£3 ',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'sub_total',
                        subTitle: '£3',
                        subTitleStyle: AppTextstyle.bodyTextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
                  getTranslated('send', context),
                  style: AppTextstyle.bodyTextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  // Navigation.pushNamed('');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
