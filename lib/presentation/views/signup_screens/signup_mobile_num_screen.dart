import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
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
import '../../../globals/countries_list.dart';
import '../../../globals/enums.dart';
import '../../../navigation/params/pincode_screen_args.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/text_field_widget.dart';

class SignUpMobileNoScreen extends ConsumerWidget {
  static const String routeName = "signup_mobileno";

  const SignUpMobileNoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        // extendBody: true,
        // resizeToAvoidBottomInset: false,
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
                  Padding(
                    padding: EdgeInsets.only(top: 28.h),
                    child: Container(
                        height: 48.h,
                        width: 80.h,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InputDecorator(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 4,
                              right: 4,
                            ),
                          ),
                          child: SizedBox(
                            height: 50.h,
                            child: DropdownButton<String>(
                              menuMaxHeight: 300,
                              isExpanded: true,

                              hint: Text(
                                getTranslated('country', context),
                                style: AppTextstyle.bodyTextStyle(
                                    fontSize: 16.sp, color: AppColors.grey),
                              ),
                              icon: const Visibility(
                                visible: false,
                                child: Icon(Icons.arrow_back),
                              ),
                              value: ref
                                  .watch(signUpStateProvider)
                                  .selectedCountry,
                              // value: countryController
                              //         .selectedCountry.value.isNotEmpty
                              //     ? countryController.selectedCountry.value
                              //     : null,

                              style: const TextStyle(color: AppColors.white),
                              underline: const SizedBox(),
                              borderRadius: BorderRadius.circular(4),
                              dropdownColor: AppColors.grey,
                              items: allCountries.map((Countries country) {
                                return DropdownMenuItem<String>(
                                  value: country.name,
                                  child: Row(
                                    children: <Widget>[
                                      Text(country.flag),
                                      4.spaceX,
                                      Text(
                                        country.dialCode,
                                        style: AppTextstyle.bodyTextStyle(
                                            color: AppColors.black),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                ref
                                    .read(signUpStateProvider.notifier)
                                    .setSelectedCountry(value);
                              },
                            ),
                          ),
                        )),
                  ),
                  SizedBox(width: 14.w),
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
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                color: Colors.transparent,
                child: Center(
                  child: SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: PrimaryButton(
                      color: buttonColor(
                          ref.watch(signUpStateProvider).isMobileNoEmpty),
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

                          // Navigation.pushNamed(SignUpMobileCodeScreen.routeName);
                        }
                      },
                    ),
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
