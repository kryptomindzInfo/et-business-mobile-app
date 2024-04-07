import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/hub_section_bottom_sheets/black_common_bottom_sheet.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../providers/pageview_provider.dart';
import '../../../onboarding_screens/onboarding_widgets/linear_indicator_widget.dart';
import '../../../onboarding_screens/onboarding_widgets/onboarding_widget.dart';

class UpgradeScreens extends ConsumerWidget {
  static const String routeName = "upgrade_screens";
  final List<Widget> pages = [
    const OnboardingWidget(
      title: 'upgrade1title',
      subtitle: 'upgrade1subtitle',
      image: AppAssets.upgrade1,
    ),
    OnboardingWidget(
      title: 'upgrade2title',
      subtitle: 'upgrade2subtitle',
      image: AppAssets.upgrade2,
      isButtons: true,
      widget: Positioned(
        bottom: 60.h,
        right: 50.w,
        left: 50.w,
        child: CommonButton(
          title: getTranslated("get_started", appContext),
          mainButtonColor: AppColors.white,
          titleColor: AppColors.black,
          width: double.infinity,
          onpress: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: appContext,
              builder: (context) => const BlackCommonBottomSheet(
                title: "your_plan_doesnt",
                subtitle: "Upgrade_your_plan",
                buttonTitle: "upgrade_plan",
                image: AppAssets.rocket,
              ),
            );
          },
        ),
      ),
    ),
  ];
  UpgradeScreens({super.key});

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
                  ref.read(upgradeScreenIndexProvider.notifier).state = index,
              itemCount: pages.length,
              itemBuilder: (context, index) => pages[index % pages.length],
            ),
          ),
          LinearIndicatorWidget(
            activePageIndex: ref.watch(upgradeScreenIndexProvider),
            widgetListLength: pages.length,
            width: 150.w,
          ),
        ],
      ),
    );
  }
}
