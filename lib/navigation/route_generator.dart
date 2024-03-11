import 'package:etbank_business_app/presentation/views/Onboarding/onboarding.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_busines_share_link_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen.dart';
import 'package:etbank_business_app/presentation/views/rates_section/rate_converter_screen.dart';
import 'package:flutter/material.dart';
// import 'package:projtemplate/navigation/params/home_screen_args.dart';
// import 'package:projtemplate/presentation/views/home_screen.dart';

import '../presentation/views/home_screen.dart';
import '../presentation/views/home_section/homes_screen.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return route(const HomeScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));

      case Onboarding.routeName:
        return route(Onboarding(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ProfileScreen.routeName:
        return route(ProfileScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ReferBusinessScreen.routeName:
        return route(ReferBusinessScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ReferBusinessShareLinkScreen.routeName:
        return route(ReferBusinessShareLinkScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case StatementScreen.routeName:
        return route(StatementScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
            case RatesAndConverterScreen.routeName:
        return route(RatesAndConverterScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      // case FirstScreen.routeName:
      //   return route(FirstScreen(
      //       firstScreenArgs: settings.arguments as FirstScreenArgs));
      default:
        return route(const ErrorRoute());
    }
  }
}

Route route(Widget screen) => MaterialPageRoute(builder: (context) => screen);

class ErrorRoute extends StatelessWidget {
  const ErrorRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Center(child: Text('You should not be here...')));
}
