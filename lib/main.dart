import 'package:etbank_business_app/presentation/views/home_section/homes_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/invoice_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/who_to_pay_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_screen.dart';
import 'package:etbank_business_app/providers/localization_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:etbank_business_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants/app_colors.dart';
import 'navigation/navigator_key.dart';
import 'navigation/route_generator.dart';
import 'presentation/views/bottom_navigation_bar.dart';
import 'presentation/views/sending_currency_screens/enter_amount_screen.dart';
import 'resources/localization/app_localization.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'ET Bank Business',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          extensions: [AppTheme()],
          splashColor: AppColors.transparent,
          highlightColor: AppColors.transparent,
        ),
        darkTheme: ThemeData(
          extensions: [AppTheme.dark()],
          splashColor: AppColors.transparent,
          highlightColor: AppColors.transparent,
        ),
        supportedLocales: AppLocalization.supportedLocales,
        locale: ref.watch(localizationProvider).locale,
        localizationsDelegates: const [
          AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        navigatorKey: navigatorKey,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: Onboarding.routeName,
      ),
    );
  }
}
