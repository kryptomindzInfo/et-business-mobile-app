import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/mark_as_paid_screen.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/sending_currency_widgets/verified_bottom_sheet_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/checkbox_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../navigation/navigation.dart';
import '../../../providers/invoice_request_provider.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/app_common_appbar.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';

class InvoiceNumberScreen extends ConsumerWidget {
  static const String routeName = "INVOICE_NUMBER_SCREEN";

  const InvoiceNumberScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var invoiceRequestProviderW = ref.watch(invoiceRequestProvider);
    var invoiceRequestProviderR = ref.read(invoiceRequestProvider);

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
                  title: getTranslated('invoice_number', context),
                  // imageicon: AppAssets.arrowLeft,
                ),
                38.spaceY,
                TextFieldWidget(
                  height: 85,
                  labelText: getTranslated('invoice_prefix', context),
                  labelStyle: AppTextstyle.headingTextStyle(
                      fontSize: 12, color: AppColors.grey),
                  hintText: getTranslated('inv', context),
                  hintStyle: AppTextstyle.headingTextStyle(
                    fontSize: 24,
                    color: context.theme.colorTheme.whiteColor,
                  ),
                ),
                8.spaceY,
                Text(
                  'Optional',
                  style: AppTextstyle.bodyTextStyle(color: AppColors.grey),
                ),
                14.spaceY,
                TextFieldWidget(
                  height: 85,
                  labelText: getTranslated('Invoice number', context),
                  labelStyle: AppTextstyle.headingTextStyle(
                      fontSize: 12, color: AppColors.grey),
                  hintText: getTranslated('2', context),
                  hintStyle: AppTextstyle.headingTextStyle(
                    fontSize: 16,
                    color: context.theme.colorTheme.whiteColor,
                  ),
                  suffixIcon: Image.asset(
                    color: AppColors.grey,
                    AppAssets.exclamationMark,
                    height: 24,
                    width: 24,
                  ),
                ),
                36.spaceY,
                CommonWhiteFlexibleCard(
                  borderRadius: 8,
                  color: context.theme.colorTheme.businessDetailsContainer,
                  padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                  widget: CheckBoxWidget(
                    checkBoxValue:
                        invoiceRequestProviderW.invoiceNumberSetAsDefault,
                    title: getTranslated('set_as_default', context),
                    titleTextStyle: AppTextstyle.bodyTextStyle(
                      fontSize: 16,
                      color: context.theme.colorTheme.whiteColor,
                    ),
                    onChanged: (value) {
                      invoiceRequestProviderR.toggleInvoiceNumberSetAsDefault();
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
                  color: AppColors.yellowGreen,
                  text: Text(
                    getTranslated('save', context),
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
                            Navigation.pushNamed(MarkAsPaidScreen.routeName);
                          },
                          child: VerifiedBottomSheetWidget(
                            title: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Invoice for ',
                                  style: AppTextstyle.bodyTextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          context.theme.colorTheme.whiteColor,
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: '\$3 ',
                                  style: AppTextstyle.bodyTextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: AppColors.blue),
                                ),
                                TextSpan(
                                  text: 'sent to nickle',
                                  style: AppTextstyle.bodyTextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          context.theme.colorTheme.whiteColor,
                                      fontSize: 20),
                                ),
                              ]),
                            ),
                            // Text(
                            //   getTranslated(
                            //       'invoice_for_3_sent_to_nickle', context),
                            //   style: AppTextstyle.bodyTextStyle(
                            //       fontWeight: FontWeight.bold, fontSize: 20),
                            // ),
                            description: Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Text(
                                getTranslated('invoice_INV_2', context),
                                style: AppTextstyle.bodyTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: AppColors.grey),
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
      ),
    );
  }
}
