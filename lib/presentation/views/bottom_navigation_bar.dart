import 'package:etbank_business_app/core/app_print.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/home_section/homes_screen.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_screen.dart';
import 'package:etbank_business_app/presentation/views/payments_section/payment_screen.dart';
import 'package:etbank_business_app/providers/home_provider.dart';
import 'package:etbank_business_app/providers/theme_provider.dart';
import 'package:etbank_business_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../constants/app_colors.dart';
import 'common_widgets/custom_bottom_navigation.dart';

// ignore: must_be_immutable
class BaseBottomNavBar extends ConsumerWidget {
  final List<Widget> navBarWidget = [
    const HomeScreen(),
    const PaymentScreen(),
    const HubScreen()
  ];

  static const String routeName = "bottom_nav_bar";
  BaseBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkTheme = ref.watch(themeProvider).themeMode == ThemeMode.dark;
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final systemUiOverlayStyle = isDarkTheme
        ? (darkTheme.appBarTheme.systemOverlayStyle!)
        : (lightTheme.appBarTheme.systemOverlayStyle!);
    // final systemUiOverlayStyle = SystemUiOverlayStyle(
    //   statusBarColor: isDarkTheme ? AppColors.darkTeal : AppColors.white,
    //   statusBarBrightness: isDarkTheme ? Brightness.dark : Brightness.light,
    //   statusBarIconBrightness: isDarkTheme ? Brightness.light : Brightness.dark,
    //   systemNavigationBarColor:
    //       isDarkTheme ? AppColors.darkTeal : AppColors.white,
    //   systemNavigationBarIconBrightness:
    //       isDarkTheme ? Brightness.light : Brightness.dark,
    // );

    return BackgroundImageWidget(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: systemUiOverlayStyle,
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          body: navBarWidget[ref.watch(homescreenProvider).pageIndex],
          bottomNavigationBar: CustomBottomNavigation(
            selected: ref.watch(homescreenProvider).pageIndex,
            onTap: (index) {
              console(index);
              ref.read(homescreenProvider).pageIndex = index;
            },
          ),
        ),
      ),
    );
  }
}
