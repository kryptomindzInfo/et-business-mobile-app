import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/globals/countries_list.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_otp_code_screen.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../globals/button_color.dart';
import '../../../globals/enums.dart';
import '../../../navigation/params/pincode_screen_args.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/countries_list_widget.dart';
import 'signup_widgets/country_drop_down_button_widget.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/text_field_widget.dart';

class SignUpMobileNoScreen extends ConsumerWidget {
  static const String routeName = "signup_mobileno";

  const SignUpMobileNoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCountry = ref.watch(signUpStateProvider).selectedCountry;

    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('mobile_no', context),
                description:
                    getTranslated('mobile_no_verification_code', context),
                imageicon: AppAssets.arrowLeft,
              ),
              Row(
                children: [
                  CountryDropDownButtonWidget(
                    title:
                        '${selectedCountry?.flag} ${selectedCountry?.dialCode}',
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return CountriesListWidget(
                              onTap: (value) {
                                ref
                                    .read(signUpStateProvider)
                                    .setSelectedCountry(value);
                              },
                            );
                          });
                    },
                  ),
                  14.spaceX,
                  Expanded(
                    child: TextFieldWidget(
                      style: const TextStyle(color: Colors.black),
                      controller:
                          ref.read(signUpStateProvider).mobileNoController,
                      hintText: getTranslated('mobile_no', context),
                      hintStyle: AppTextstyle.bodyTextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      onChanged: (value) {
                        ref.read(signUpStateProvider).notify();
                      },
                    ),
                  ),
                ],
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
                color:
                    buttonColor(ref.watch(signUpStateProvider).isMobileNoEmpty),
                text: Text(
                  getTranslated('continue', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: buttonTextColor(
                          ref.watch(signUpStateProvider).isMobileNoEmpty),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  if (ref.read(signUpStateProvider).isMobileNoEmpty) {
                  } else {
                    Navigation.pushNamed(SignUpOtpCodeScreen.routeName,
                        arguments: PinCodeScreenArgs(
                            value: '+92343242342',
                            type: PinCodeDestinationType.phone));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
