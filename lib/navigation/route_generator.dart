import 'package:flutter/material.dart';
// import 'package:projtemplate/navigation/params/home_screen_args.dart';
// import 'package:projtemplate/presentation/views/home_screen.dart';

import '../presentation/views/home_screen.dart';
import '../presentation/views/home_section/homes_screen.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return route(HomeScreen(
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
