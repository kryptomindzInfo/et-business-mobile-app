import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/providers/pageview_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'OnboardingWidgets/linear_indicator.dart';
import 'onboarding_widgets/onboarding_widget.dart';

class Onboarding extends ConsumerWidget {
  static const String routeName = "my_page_view";
  final List<Widget> pages = [
    OnboardingWidget(
      title: 'onboarding1_title',
      subtitle: 'onboarding1_subtitle',
      image: AppAssets.onboardingImage1,
    ),
    OnboardingWidget(
      title: 'onboarding2_title',
      subtitle: 'onboarding2_subtitle',
      image: AppAssets.onboardingImage2,
    ),
    OnboardingWidget(
      title: 'onboarding3_title',
      subtitle: 'onboarding3_subtitle',
      image: AppAssets.onboardingImage3,
    ),
    OnboardingWidget(
      title: 'onboarding4_title',
      subtitle: 'onboarding4_subtitle',
      image: AppAssets.onboardingImage4,
    ),
    OnboardingWidget(
      title: 'onboarding5_title',
      subtitle: 'onboarding5_subtitle',
      image: AppAssets.onboardingImage5,
    ),
    OnboardingWidget(
      title: 'onboarding6_title',
      subtitle: 'onboarding6_subtitle',
      image: AppAssets.onboardingImage6,
      isButtons: true,
    ),
  ];

  Onboarding({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.read(pageControllerProvider);

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0.h),
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) =>
                  ref.read(activePageIndexProvider.notifier).state = index,
              itemCount: pages.length,
              itemBuilder: (context, index) => pages[index % pages.length],
            ),
          ),
          const LinearIndicator(),
        ],
      ),
    );
  }
}
