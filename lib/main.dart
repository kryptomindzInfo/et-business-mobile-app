import 'package:etbank_business_app/constants/static_data/home_screen_static_data.dart';
import 'package:etbank_business_app/presentation/views/bottom_navigation_bar.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/add_currency_pair_widget.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/rates_tab.chips.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/rate_tab_widget.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/invite_to_et_bank_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/add_new_customer_screen.dart';
import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/who_to_pay_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/business_details/get_more_from_business_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/captured_picture_of_document_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/sign_in_sign_up_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_create_password_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_role_in_the_company_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_user_home_address_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_verifications_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_welcome_back_screen.dart';
import 'package:etbank_business_app/providers/localization_provider.dart';
import 'package:etbank_business_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants/app_colors.dart';
import 'navigation/navigator_key.dart';
import 'navigation/route_generator.dart';
import 'presentation/views/converting_currency/rates_tab_section/currency_exchange_converter_screen.dart';
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
        debugShowCheckedModeBanner: false,
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
        initialRoute: BaseBottomNavBar.routeName,
        // initialRoute: SignUpVerificationsScreen.routeName,
      ),
    );
  }
}
