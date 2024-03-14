import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_role_in_the_company_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/bottom_sheet_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_widgets/business_details_white_container_widget.dart';
import 'signup_widgets/business_not_listed_widget.dart';
import 'signup_widgets/countries_list_widget.dart';
import 'signup_widgets/list_of_addresses_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpUserHomeAddressScreen extends ConsumerWidget {
  static const String routeName = "user_home_address";

  const SignUpUserHomeAddressScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated('forks_home_address', context),
                  imageicon: AppAssets.arrowLeft,
                ),
                30.spaceY,
                BusinessDetailsWhiteContainerWidet(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: AppColors.black,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return BottomSheetWidet(
                            onChanged: (value) {},
                            onCancelTap: () {},
                            bottomNavigationBody: CountriesListWidget(
                              onTap: (index) {
                                ref
                                    .read(signUpStateProvider)
                                    .setcountryOfResidence(index);
                              },
                            ),
                          );
                        });
                  },
                  title: ref.watch(signUpStateProvider).countryOfResidence == ''
                      ? getTranslated('county_of_residence', context)
                      : ref.watch(signUpStateProvider).countryOfResidence!,
                  titleTextColor:
                      ref.watch(signUpStateProvider).countryOfResidence == ''
                          ? Colors.grey
                          : Colors.black,
                  icon: Image.asset(
                    AppAssets.iconArrowDownBlack,
                    height: 11.h,
                    width: 22.w,
                  ),
                ),
                16.spaceY,
                BusinessDetailsWhiteContainerWidet(
                  title: getTranslated('post_code', context),
                  icon: Image.asset(
                    AppAssets.iconSearchBlack,
                    height: 14.h,
                    width: 14.w,
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: AppColors.black,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Consumer(
                            builder: (context, ref, child) {
                              final postCode =
                                  ref.watch(signUpStateProvider).postCode;

                              return BottomSheetWidet(
                                hintText: getTranslated('post_code', context),
                                onChanged: (value) {
                                  ref
                                      .read(signUpStateProvider)
                                      .setPostCode(value);
                                },
                                onCancelTap: () {},
                                bottomNavigationBody: postCode!.isNotEmpty
                                    ? const ListOfAdressesWidget()
                                    : BusinessNotListedWidet(
                                        image: AppAssets.puzzleImage,
                                        title: getTranslated(
                                            'business_not_listed_here',
                                            context),
                                        tilteStyle: AppTextstyle.bodyTextStyle(
                                          fontSize: 16.sp,
                                          color: AppColors.grey,
                                        ),
                                      ),
                              );
                            },
                          );
                        });
                  },
                ),
                TextFieldWidget(
                  hintText: getTranslated('address_line_01', context),
                  hintStyle: AppTextstyle.bodyTextStyle(color: AppColors.grey),
                  style: AppTextstyle.bodyTextStyle(color: AppColors.black),
                ),
                TextFieldWidget(
                  hintText: getTranslated('address_line_01', context),
                  hintStyle: AppTextstyle.bodyTextStyle(color: AppColors.grey),
                  style: AppTextstyle.bodyTextStyle(color: AppColors.black),
                ),
                Text(
                  getTranslated('optional', context),
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 16.sp, color: Colors.grey),
                  overflow: TextOverflow.clip,
                ),
                TextFieldWidget(
                  hintText: getTranslated('city', context),
                  hintStyle: AppTextstyle.bodyTextStyle(color: AppColors.grey),
                  style: AppTextstyle.bodyTextStyle(color: AppColors.black),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                height: 100.h,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 48.h,
                        width: 327.w,
                        child: PrimaryButton(
                          color: AppColors.primaryColor,
                          text: Text(
                            getTranslated('continue', context),
                            style: AppTextstyle.bodyTextStyle(
                                color: AppColors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            Navigation.pushNamed(
                                SignUpRoleInTheCompanyScreen.routeName);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
