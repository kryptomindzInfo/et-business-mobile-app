import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/bottom_sheet_widget.dart';
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
import 'signup_widgets/primary_button.dart';

class SignUpBusinessDetailsScreen extends ConsumerWidget {
  static const String routeName = "signup_business_details";

  const SignUpBusinessDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      body: BackgroundImageWidget(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('business_details_title', context),
                description:
                    getTranslated('business_details_subtitle', context),
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
                          bottomNavigationBody: const CountriesListWidget(),
                        );
                      });
                },
                title: ref.watch(signUpStateProvider).countryOfIncorporation ==
                        ''
                    ? getTranslated('county_of_incorporation', context)
                    : ref.watch(signUpStateProvider).countryOfIncorporation!,
                titleTextColor:
                    ref.watch(signUpStateProvider).countryOfIncorporation == ''
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
                title: getTranslated('legal_name', context),
                icon: Image.asset(
                  AppAssets.iconSearchBlack,
                  height: 18.h,
                  width: 18.w,
                ),
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: AppColors.black,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return BottomSheetWidet(
                          hintText: getTranslated('legal_name', context),
                          onChanged: (value) {},
                          onCancelTap: () {},
                          bottomNavigationBody: BusinessNotListedWidet(
                            title: getTranslated(
                                'business_not_listed_here', context),
                          ),
                        );
                      });
                },
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
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ));
      }),
    );
  }
}
