import 'package:etbank_business_app/providers/localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'navigation/navigator_key.dart';
import 'navigation/route_generator.dart';
import 'presentation/views/home_section/homes_screen.dart';
import 'resources/localization/app_localization.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
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
      initialRoute: HomeScreen.routeName,
    );
  }
}
