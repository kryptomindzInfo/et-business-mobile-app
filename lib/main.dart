import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/captured_picture_of_document_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/sign_in_sign_up_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_verifications_screen.dart';
import 'package:etbank_business_app/providers/localization_provider.dart';
import 'package:etbank_business_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants/app_colors.dart';
import 'navigation/navigator_key.dart';
import 'navigation/route_generator.dart';
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
        initialRoute: SignUpEmailScreen.routeName,
        // initialRoute: SignUpVerificationsScreen.routeName,
      ),
    );
  }
}
