import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_proof_residency_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/bottom_sheet_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../providers/signup_provider.dart';
import '../common_widgets/app_common_appbar.dart';
import 'signup_widgets/business_details_white_container_widget.dart';
import 'signup_widgets/business_not_listed_widget.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/countries_list_widget.dart';
import 'signup_widgets/list_of_addresses_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpUserHomeAddressScreen extends ConsumerWidget {
  static const String routeName = "user_home_address";

  const SignUpUserHomeAddressScreen({super.key});

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
                    title: getTranslated('forks_home_address', context),
                    // imageicon: AppAssets.arrowLeft,
                  ),
                  32.spaceY,
                  BusinessDetailsWhiteContainerWidet(
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor:
                              context.theme.colorTheme.bottomSheetColor,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return BottomSheetWidet(
                              onChanged: (value) {},
                              onCancelTap: () {
                                Navigator.pop(context);
                              },
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
                    title:
                        '${ref.watch(signUpStateProvider).countryOfResidence.flag}  ${ref.watch(signUpStateProvider).countryOfResidence.name}',
                    // titleTextColor: Colors.black,
                    icon: Image.asset(
                      AppAssets.iconArrowDownBlack,
                      height: 9.h,
                      width: 20.w,
                      color: context.theme.colorTheme.whiteColor,
                    ),
                  ),
                  16.spaceY,
                  BusinessDetailsWhiteContainerWidet(
                    title: getTranslated('post_code', context),
                    titleTextColor: AppColors.grey,
                    icon: Image.asset(
                      AppAssets.iconSearchBlack,
                      height: 14.h,
                      width: 14.w,
                      color: context.theme.colorTheme.whiteColor,
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor:
                              context.theme.colorTheme.bottomSheetColor,
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
                                  onCancelTap: () {
                                    Navigator.pop(context);
                                  },
                                  bottomNavigationBody: postCode!.isNotEmpty
                                      ? const ListOfAdressesWidget()
                                      : BusinessNotListedWidet(
                                          image: AppAssets.puzzleImage,
                                          title: getTranslated(
                                              'business_not_listed_here',
                                              context),
                                          tilteStyle:
                                              AppTextstyle.bodyTextStyle(
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
                  16.spaceY,
                  TextFieldWidget(
                    contentPadding: const EdgeInsets.only(left: 15, bottom: 4),
                    height: 53,
                    hintText: getTranslated('address_line_01', context),
                    hintStyle:
                        AppTextstyle.bodyTextStyle(color: AppColors.grey),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.whiteColor),
                  ),
                  16.spaceY,
                  TextFieldWidget(
                    contentPadding: const EdgeInsets.only(left: 15, bottom: 4),
                    height: 53,
                    hintText: getTranslated('address_line_02', context),
                    hintStyle:
                        AppTextstyle.bodyTextStyle(color: AppColors.grey),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.whiteColor),
                  ),
                  4.spaceY,
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      getTranslated('optional', context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 12.sp, color: Colors.grey),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  16.spaceY,
                  TextFieldWidget(
                    contentPadding: const EdgeInsets.only(left: 15, bottom: 4),
                    height: 53,
                    hintText: getTranslated('city', context),
                    hintStyle:
                        AppTextstyle.bodyTextStyle(color: AppColors.grey),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.whiteColor),
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
                    getTranslated('continue', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.buttonTitleColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigation.pushNamed(ProofOfResidencyScreen.routeName);
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
