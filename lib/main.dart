import 'package:etbank_business_app/presentation/views/signup_screens/sign_in_sign_up_screen.dart';
import 'package:etbank_business_app/providers/localization_provider.dart';
import 'package:etbank_business_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'navigation/navigator_key.dart';
import 'navigation/route_generator.dart';
import 'providers/theme_provider.dart';
import 'resources/app_persistance/app_local.dart';
import 'resources/localization/app_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLocal.ins.initStorage();
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
        themeMode: ref.watch(themeProvider).themeMode,
        theme: lightTheme,
        darkTheme: darkTheme,
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
        initialRoute: SignInSignUpScreen.routeName,
      ),
    );
  }
}
