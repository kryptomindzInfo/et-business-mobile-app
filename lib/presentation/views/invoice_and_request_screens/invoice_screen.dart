import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/add_customer_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/invoice_and_request_widgets/request_money_white_container_widget.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/sending_currency_widgets/show_account_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../navigation/navigation.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/app_common_appbar.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/director_button_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';

class InvoiceSreen extends ConsumerWidget {
  static const String routeName = "INVOICE_SCREEN";

  const InvoiceSreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
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
                    title: getTranslated('invoice_INV_2', context),
                    // imageicon: AppAssets.arrowLeft,
                    widget: Image.asset(
                      AppAssets.addIconBold,
                      height: 34,
                      width: 34,
                    ),
                    // trailingImage: AppAssets.addIconBold,
                    // trailingImageHeight: 28,
                    // trailingImageWidth: 28,
                    rightPadding: 0,
                  ),
                  16.spaceY,
                  Row(
                    children: [
                      DirectorButtonWidget(
                        leadingImage: AppAssets.eye,
                        title: getTranslated('preview_email', context),
                        buttonColor: context.theme.colorTheme.yellowGreenColor,
                        titleTextStyle:
                            AppTextstyle.bodyTextStyle(color: AppColors.black),
                      ),
                      8.spaceX,
                      DirectorButtonWidget(
                        leadingImage: AppAssets.bin,
                        imageColor: AppColors.black,
                        title: getTranslated('delete', context),
                        buttonColor: context.theme.colorTheme.yellowGreenColor,
                        titleTextStyle:
                            AppTextstyle.bodyTextStyle(color: AppColors.black),
                      ),
                    ],
                  ),
                  24.spaceY,
                  Text(
                    getTranslated('bill_to', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.yellowToBlackish,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  12.spaceY,
                  CommonWhiteFlexibleCard(
                    padding: const EdgeInsets.all(0),
                    borderRadius: 12,
                    color: AppColors.transparent,
                    border: Border.all(
                        color: context.theme.colorTheme.transparentToTeal),
                    widget: RequestMoneyWhiteContainerWidget(
                        color:
                            context.theme.colorTheme.businessDetailsContainer,
                        titleColor: context.theme.colorTheme.whiteColor,
                        subTitlecolor: AppColors.grey,
                        imageicon: Image.asset(
                          color: AppColors.white,
                          AppAssets.person,
                          height: 25,
                        ),
                        title: 'add_customer',
                        subtitle: 'required'),
                  ),
                  16.spaceY,
                  CommonWhiteFlexibleCard(
                    padding: const EdgeInsets.all(0),
                    borderRadius: 12,
                    color: AppColors.transparent,
                    border: Border.all(
                        color: context.theme.colorTheme.transparentToTeal),
                    widget: RequestMoneyWhiteContainerWidget(
                      color: context.theme.colorTheme.businessDetailsContainer,
                      titleColor: context.theme.colorTheme.whiteColor,
                      subTitlecolor: AppColors.grey,
                      title: 'add_an_email_message',
                      subtitle: 'appears_on_the_email_your_costumer_receives',
                    ),
                  ),
                  32.spaceY,
                  Text(
                    getTranslated('items', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.yellowToBlackish,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  22.spaceY,
                  ShowAccountDetailsWidget(
                    color: context.theme.colorTheme.businessDetailsContainer,
                    border: Border.all(
                        color: context.theme.colorTheme.transparentToTeal),
                    title: getTranslated('currency', context),
                    titleColor: AppColors.grey,
                    subTitle: getTranslated('GBP_british_pound', context),
                    subTitleStyle: AppTextstyle.bodyTextStyle(
                        fontSize: 16, color: AppColors.darkGreen),
                  ),
                  16.spaceY,
                  CommonWhiteFlexibleCard(
                    padding: const EdgeInsets.all(0),
                    borderRadius: 12,
                    color: AppColors.transparent,
                    border: Border.all(
                        color: context.theme.colorTheme.transparentToTeal),
                    widget: RequestMoneyWhiteContainerWidget(
                        color:
                            context.theme.colorTheme.businessDetailsContainer,
                        titleColor: context.theme.colorTheme.whiteColor,
                        subTitlecolor: AppColors.grey,
                        imageicon: Image.asset(
                          AppAssets.addItems,
                          height: 25,
                        ),
                        title: 'add_items',
                        subtitle: 'required'),
                  ),
                  16.spaceY,
                  ShowAccountDetailsWidget(
                    border: Border.all(
                        color: context.theme.colorTheme.transparentToTeal),
                    color: context.theme.colorTheme.businessDetailsContainer,
                    titleColor: AppColors.grey,
                    title: getTranslated('sub_total', context),
                    subTitle: getTranslated('£0', context),
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
                  color: true
                      ? context.theme.colorTheme.buttonColor
                      : context.theme.colorTheme.buttonDisabledColor,
                  text: Text(
                    getTranslated('send', context),
                    style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    Navigation.pushNamed(AddCustomerScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
