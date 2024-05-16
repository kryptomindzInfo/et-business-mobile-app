import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/bottom_navigation_bar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/green_circle_widget.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/director_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_textstyle.dart';
import '../../../navigation/navigation.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/app_common_appbar.dart';
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
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated('£3', context),
                  trailing: Column(
                    children: [
                      Stack(
                        children: [
                          GreenCircleWidget(
                            widget: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset(AppAssets.invoice),
                            ),
                          ),
                          Positioned(
                            right: 1,
                            bottom: 1,
                            child: Image.asset(
                              AppAssets.clock,
                              height: 13,
                              width: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // imageicon: AppAssets.arrowLeft,
                ),
                7.spaceY,
                Text(
                  getTranslated('Rig Mark', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.white, fontSize: 18),
                ),
                Text(
                  getTranslated('time', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.white, fontSize: 14),
                ),
                35.spaceY,
                Row(
                  children: [
                    DirectorButtonWidget(
                      buttonRadius: 12,
                      buttonColor: AppColors.yellowGreen,
                      leadingImage: AppAssets.tick,
                      title: getTranslated('mark_as_Paid', context),
                      titleTextStyle: AppTextstyle.bodyTextStyle(
                          fontSize: 16, color: AppColors.black),
                    ),
                    12.spaceX,
                    DirectorButtonWidget(
                      buttonRadius: 12,
                      buttonColor: AppColors.yellowGreen,
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                      title: getTranslated('...', context),
                      titleTextStyle: AppTextstyle.bodyTextStyle(
                          fontSize: 16, color: AppColors.black),
                    ),
                  ],
                ),
                25.spaceY,
                CommonWhiteFlexibleCard(
                  borderRadius: 12,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  widget: Column(
                    children: [
                      ShowAccountDetailsWidget(
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.transparent,
                        title: 'status',
                        subTitle: 'sent',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'invoice_number',
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.transparent,
                        subTitle: 'INV-2',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'due',
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.transparent,
                        subTitle: 'Feb 28, 2022',
                      ),
                    ],
                  ),
                ),
                24.spaceY,
                CommonWhiteFlexibleCard(
                  borderRadius: 12,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  widget: Column(
                    children: [
                      ShowAccountDetailsWidget(
                        title: 'bill_to',
                        titleColor: AppColors.grey,
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.transparent,
                      ),
                      const NameCircleWidget(
                        // border: Border.all(color: Colors.transparent),
                        color: AppColors.transparent,
                        leadingText: 'RK',
                        name: "Rig Mark",
                      ),
                    ],
                  ),
                ),
                24.spaceY,
                CommonWhiteFlexibleCard(
                  borderRadius: 12,
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShowAccountDetailsWidget(
                        title: 'email_message',
                        titleColor: AppColors.grey,
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.transparent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          getTranslated(
                              'please_see_the_attached_invoice', context),
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 16, color: AppColors.white),
                        ),
                      ),
                      32.spaceY,
                    ],
                  ),
                ),
                20.spaceY,
                CommonWhiteFlexibleCard(
                  borderRadius: 12,
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  widget: Column(
                    children: [
                      ShowAccountDetailsWidget(
                        title: 'items',
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.transparent,
                      ),
                      const NameCircleWidget(
                        leadingText: 'C',
                        name: "consulting",
                        color: AppColors.transparent,
                        trailingText: "£3",
                        trailingHintText: '1 *£3 ',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'sub_total',
                        subTitle: '£3',
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.transparent,
                        subTitleStyle: AppTextstyle.bodyTextStyle(
                            fontSize: 18, color: AppColors.white),
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
                color: AppColors.yellowGreen,
                text: Text(
                  getTranslated('send', context),
                  style: AppTextstyle.bodyTextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigation.pushNamed(BaseBottomNavBar.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
