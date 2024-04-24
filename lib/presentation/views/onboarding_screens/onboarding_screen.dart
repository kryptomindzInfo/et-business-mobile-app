import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:etbank_business_app/navigation/params/onboarding_args.dart';
import 'package:etbank_business_app/providers/pageview_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';
import '../../../navigation/navigation.dart';
import '../../../resources/localization/language_constrants.dart';
import '../bottom_navigation_bar.dart';
import '../signup_screens/signup_email_screen.dart';
import 'onboarding_widgets/button_widget.dart';
import 'onboarding_widgets/linear_indicator_widget.dart';
import 'onboarding_widgets/onboarding_widget.dart';

// ignore: must_be_immutable
class Onboarding extends ConsumerWidget {
  static const String routeName = "signIn_SignUp_screen";
  final List<Widget> pages = [
    const OnboardingWidget(
      title: 'onboarding1_title',
      subtitle: 'onboarding1_subtitle',
      image: AppAssets.onboardingImage1,
    ),
    const OnboardingWidget(
      title: 'onboarding2_title',
      subtitle: 'onboarding2_subtitle',
      image: AppAssets.onboardingImage2,
    ),
    const OnboardingWidget(
      title: 'onboarding3_title',
      subtitle: 'onboarding3_subtitle',
      image: AppAssets.onboardingImage3,
    ),
    const OnboardingWidget(
      title: 'onboarding4_title',
      subtitle: 'onboarding4_subtitle',
      image: AppAssets.onboardingImage4,
    ),
    const OnboardingWidget(
      title: 'onboarding5_title',
      subtitle: 'onboarding5_subtitle',
      image: AppAssets.onboardingImage5,
    ),
    OnboardingWidget(
      title: 'onboarding6_title',
      subtitle: 'onboarding6_subtitle',
      // image: AppAssets.onboardingImage6,
      isButtons: true,
      widget: Positioned(
        bottom: 60.h,
        right: 50.w,
        left: 50.w,
        child: Row(
          children: [
            CustomButton(
              onPressed: () {
                Navigation.pushNamed(BaseBottomNavBar.routeName);
              },
              height: 39.h,
              width: 133.w,
              backgroundColor: AppColors.tealColor,
              textColor: AppColors.white,
              borderRadius: 20,
              text: getTranslated('sign_in', appContext),
            ),
            20.spaceX,
            CustomButton(
              onPressed: () {
                Navigation.pushNamed(SignUpEmailScreen.routeName);
              },
              height: 39.h,
              width: 133.w,
              backgroundColor: AppColors.primaryColor,
              textColor: AppColors.black,
              borderRadius: 20,
              text: getTranslated('sign_up', appContext),
            ),
          ],
        ),
      ),
    ),
  ];
  OnboardingArgs? params;
  Onboarding({super.key, this.params});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.read(pageControllerProvider);
    print(params!.screens);
    print("dddddddddddd");

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0.h),
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) =>
                  ref.read(activePageIndexProvider.notifier).state = index,
              itemCount: params!.screens!.isNotEmpty
                  ? params!.screens!.length
                  : pages.length,
              itemBuilder: (context, index) => params!.screens!.isNotEmpty
                  ? params!.screens![index % pages.length]
                  : pages[index % pages.length],
            ),
          ),
          LinearIndicatorWidget(
            activePageIndex: ref.watch(activePageIndexProvider),
            widgetListLength: params!.screens!.isNotEmpty
                ? params!.screens!.length
                : pages.length,
            width: params!.width ?? 50.w,
          ),
        ],
      ),
    );
  }
}
