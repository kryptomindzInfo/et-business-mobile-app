import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/enter_amount_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_textstyle.dart';
import '../../signup_screens/signup_widgets/primary_button.dart';

class PaymentNotificationBottomSheetWidget extends ConsumerWidget {
  const PaymentNotificationBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: Container(
        height: 950,
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.theme.colorTheme.bottomSheetColor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 82, 20, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: context.theme.colorTheme.whiteColor,
                      ),
                    ),
                  ),
                  26.spaceY,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HeaderIconWithTitle(
                      // imageicon: AppAssets.crossicon,
                      // imageIconHeight: 14,
                      // imageIconWidth: 14,
                      title: getTranslated('payment_notif_title', context),
                      titleColor: context.theme.colorTheme.whiteColor,
                      spaceBtw: 8,
                      description:
                          getTranslated('payment_notif_subtitle', context),
                    ),
                  ),
                  34.spaceY,
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFieldWidget(
                      contentPadding: const EdgeInsets.only(left: 11, top: 4),
                      containerColor:
                          context.theme.colorTheme.businessDetailsContainer,
                      border: Border.all(
                        color: context.theme.colorTheme.transparentToTeal,
                      ),
                      hintText: getTranslated('recipient_email', context),
                      style:
                          TextStyle(color: context.theme.colorTheme.whiteColor),
                    ),
                  ),
                ],
              ),
              Column(
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
                        Navigation.pushNamed(EnterAmountScreen.routeName);
                      },
                    ),
                  ),
                  8.spaceY,
                  SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: PrimaryButton(
                      color: AppColors.transparent,
                      text: Text(
                        getTranslated('not_now', context),
                        style: AppTextstyle.bodyTextStyle(
                            color: AppColors.grassGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
