import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_describe_business_activity_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enable_face_id_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_role_in_the_company_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_website_social_ecommerce_link_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_where_you_conduct_business_screen.dart';
import 'package:etbank_business_app/providers/localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      designSize: const Size(390, 844), // Define your design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'ET Bank Business',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
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
        initialRoute: SignUpWhereYouConductBusinessScreen.routeName,
      ),
    );
  }
}
