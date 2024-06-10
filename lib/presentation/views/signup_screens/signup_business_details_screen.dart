import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_registered_business_address_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/bottom_sheet_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../providers/signup_provider.dart';
import 'signup_widgets/business_details_white_container_widget.dart';
import 'signup_widgets/business_not_listed_widget.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/countries_list_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpBusinessDetailsScreen extends ConsumerWidget {
  static const String routeName = "signup_business_details";

  const SignUpBusinessDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderIconWithTitle(
                    title: getTranslated('business_details_title', context),
                    description:
                        getTranslated('business_details_subtitle', context),
                    // imageicon: AppAssets.arrowLeft,
                  ),
                  30.spaceY,
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
                                  color:
                                      context.theme.colorTheme.tealTohalfWhite,
                                  onTap: (x) {},
                                ),
                              );
                            });
                      },
                      labelText: getTranslated('country', context),
                      title: ref
                                  .watch(signUpStateProvider)
                                  .countryOfIncorporation ==
                              ''
                          ? getTranslated('county_of_incorporation', context)
                          : ref
                              .watch(signUpStateProvider)
                              .countryOfIncorporation!,
                      titleTextColor: ref
                                  .watch(signUpStateProvider)
                                  .countryOfIncorporation ==
                              ''
                          ? context.theme.colorTheme.normalTextColor
                          : context.theme.colorTheme.whiteColor,
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        // size: 25,
                        color: AppColors.iconGreyColor,
                      )),
                  16.spaceY,
                  BusinessDetailsWhiteContainerWidet(
                    title: getTranslated('legal_name', context),
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor:
                              context.theme.colorTheme.bottomSheetColor,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return BottomSheetWidet(
                              hintText: getTranslated('legal_name', context),
                              onChanged: (value) {},
                              onCancelTap: () {
                                Navigator.pop(context);
                              },
                              bottomNavigationBody: BusinessNotListedWidet(
                                title: getTranslated(
                                    'business_not_listed_here', context),
                              ),
                            );
                          });
                    },
                    icon: Image.asset(
                      AppAssets.iconSearchBlack,
                      height: 17.h,
                      width: 17.w,
                      color: AppColors.iconGreyColor,
                    ),
                  ),
                  16.spaceY,
                  BusinessDetailsWhiteContainerWidet(
                    labelText: getTranslated(
                        'company_house_registration_number', context),
                    title: 'A1213454',
                    onTap: () {},
                    icon: Image.asset(
                      AppAssets.whitecross,
                      scale: 2.5,
                    ),
                  ),
                  8.spaceY,
                  Text(
                    getTranslated('usually_looks_like_format', context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16.sp, color: Colors.grey),
                    overflow: TextOverflow.clip,
                  ),
                  16.spaceY,
                  BusinessDetailsWhiteContainerWidet(
                    labelText: getTranslated('date_of_incorporation', context),
                    title: '02/28/2024',
                    onTap: () {},
                  ),
                  16.spaceY,
                  BusinessDetailsWhiteContainerWidet(
                      labelText: getTranslated('business_type', context),
                      title: getTranslated('private_limited_company', context),
                      onTap: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        // size: 55,
                        color: AppColors.iconGreyColor,
                      )),
                  16.spaceY,
                  BusinessNotListedWidet(
                    title: getTranslated('known_by_different_name', context),
                    tilteStyle: AppTextstyle.bodyTextStyle(
                        fontSize: 16.sp,
                        color: context.theme.colorTheme.normalTextColor),
                    isRadioButton: true,
                  ),
                  20.spaceY,
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
                        color: context.theme.colorTheme.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context,
                        SignUpRegisteredBusinessAddressScreen.routeName);
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
