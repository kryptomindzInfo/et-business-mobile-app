import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../navigation/navigation.dart';
import '../../../providers/sending_currency_provider.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/app_common_appbar.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../signup_screens/signup_widgets/bottom_sheet_widget.dart';
import '../signup_screens/signup_widgets/business_details_white_container_widget.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/countries_list_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';
import '../signup_screens/signup_widgets/text_field_widget.dart';
import 'email_message_screen.dart';

class BillingDetailsScreen extends ConsumerWidget {
  static const String routeName = "BILLING_DETAILS_SCREEN";

  const BillingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sendingCurrencyProviderW = ref.watch(sendingCurrencyProvider);

    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated('billing_details_title', context),
                  description:
                      getTranslated('billing_details_subtitle', context),
                  // imageicon: AppAssets.arrowLeft,
                  widget: Image.asset(
                    AppAssets.addIconBold,
                    height: 34,
                    width: 34,
                  ),
                  // trailingImage: AppAssets.addIconBold,
                  rightPadding: 0,
                ),
                if (sendingCurrencyProviderW.selectedCountry?.name == null) ...{
                  33.spaceY,
                  // Center(
                  //   child: Text(
                  //     getTranslated('cant_find_who_you_are_looking_for', context),
                  //     style: AppTextstyle.headingTextStyle(
                  //       color: AppColors.white,
                  //       fontSize: 16,
                  //     ),
                  //   ),
                  // ),
                },
                18.spaceY,
                BusinessDetailsWhiteContainerWidet(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: AppColors.black,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return BottomSheetWidet(
                          onChanged: (value) {},
                          onCancelTap: () {
                            Navigator.pop(context);
                          },
                          bottomNavigationBody: CountriesListWidget(
                            onTap: (x) {
                              ref
                                  .read(sendingCurrencyProvider)
                                  .setSelectedCountry(x);
                            },
                          ),
                        );
                      },
                    );
                  },
                  title: sendingCurrencyProviderW.selectedCountry?.name ??
                      getTranslated('country', context),
                  titleTextColor:
                      sendingCurrencyProviderW.selectedCountry?.name == ''
                          ? context.theme.colorTheme.whiteColor
                          : context.theme.colorTheme.whiteColor,
                  icon: Image.asset(
                    AppAssets.iconArrowDownBlack,
                    color: context.theme.colorTheme.whiteColor,
                    height: 11.h,
                    width: 22.w,
                  ),
                ),
                if (sendingCurrencyProviderW.selectedCountry?.name != null) ...{
                  16.spaceY,
                  TextFieldWidget(
                    hintText: getTranslated('address_line_01', context),
                    hintStyle:
                        AppTextstyle.bodyTextStyle(color: AppColors.grey),
                  ),
                  16.spaceY,
                  TextFieldWidget(
                    hintText: getTranslated('address_line_02', context),
                    hintStyle:
                        AppTextstyle.bodyTextStyle(color: AppColors.grey),
                  ),
                  16.spaceY,
                  TextFieldWidget(
                    hintText: getTranslated('post_code', context),
                    hintStyle:
                        AppTextstyle.bodyTextStyle(color: AppColors.grey),
                  ),
                  16.spaceY,
                  TextFieldWidget(
                    hintText: getTranslated('city', context),
                    hintStyle:
                        AppTextstyle.bodyTextStyle(color: AppColors.grey),
                  ),
                },
              ],
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
                    getTranslated('continue', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigation.pushNamed(EmailMessageScreen.routeName);
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
