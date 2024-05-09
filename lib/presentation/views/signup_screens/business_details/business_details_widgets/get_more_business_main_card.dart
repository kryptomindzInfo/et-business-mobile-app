import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/navigation/params/onboarding_args.dart';
import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_textstyle.dart';
import '../../../../../navigation/navigator_key.dart';
import '../../../../../resources/localization/language_constrants.dart';
import '../../../onboarding_screens/onboarding_widgets/button_widget.dart';
import '../../../onboarding_screens/onboarding_widgets/onboarding_widget.dart';
import '../../../profile_section/refer_business/refer_business_wdigets/get_started_whole_container.dart';

// ignore: must_be_immutable
class GetMoreBusinessMainCard extends ConsumerWidget {
  List<Widget> screens = [
    const OnboardingWidget(
      title: 'exchange_money',
      subtitle: 'exhange_money_description',
      image: AppAssets.exchangemoneyicon,
    ),
    const OnboardingWidget(
      title: 'create_accounts',
      subtitle: 'create_accounts_description',
      image: AppAssets.ulimitedaccounticon,
    ),
    OnboardingWidget(
      title: 'recieve_international_payment',
      subtitle: 'recieve_international_payment_description',
      image: AppAssets.internationpaymenticon,
      scale: 2,
      isButtons: true,
      widget: Positioned(
        bottom: 60.h,
        right: 50.w,
        left: 50.w,
        child: CustomButton(
          onPressed: () {
            // Navigation.pushNamed(BaseBottomNavBar.routeName);
          },
          height: 48.h,
          width: 327.w,
          backgroundColor: appContext.theme.colorTheme.buttonColor,
          textColor: appContext.theme.colorTheme.buttonTitleColor,
          borderRadius: 20,
          text: getTranslated('get_started', appContext),
        ),
      ),
    ),
  ];
  GetMoreBusinessMainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 35, left: 50),
            child: Image.asset(
              AppAssets.getmoreicon,
              scale: 2.10,
            ),
          ),
        ),
        Container(
          height: 373,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              // color: AppColors.transparent,
              color: Color(0xff0D2226).withOpacity(0.6),
              border: Border.all(color: context.theme.colorTheme.borderColor)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 55),
                child: Image.asset(
                  AppAssets.appbarLogo,
                  // height: 130,
                  scale: 1.50,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 25,
                  right: 55,
                ),
                child: Text(
                  getTranslated("get_more_from_business", context),
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: context.theme.colorTheme.normalTextColor,
                      overflow: TextOverflow.clip),
                ),
              ),
              5.spaceY,
              GetStartedSection(
                title: getTranslated("easier_way_to_manage", context),
                onpress: () {
                  print(screens);
                  Navigation.pushNamed(Onboarding.routeName,
                      arguments: OnboardingArgs(screens: screens, width: 100));
                },
              )
            ],
          ),
        ),
      ],
    );
    ;
  }
}
