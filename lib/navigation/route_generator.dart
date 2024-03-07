import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_type_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_check_email_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_create_password_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_code_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enable_push_notif_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enter_passcode_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_mobile_code_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_mobile_num_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_welcome_back_screen.dart';
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
        return route(Onboarding());

      case SignUpEmailScreen.routeName:
        return route(const SignUpEmailScreen());

      case SignUpCheckEmailScreen.routeName:
        return route(const SignUpCheckEmailScreen());

      case SignUpEmailCodeScreen.routeName:
        return route(const SignUpEmailCodeScreen());

      case SignUpBusinessTypeScreen.routeName:
        return route(const SignUpBusinessTypeScreen());

      case SignUpMobileNoScreen.routeName:
        return route(const SignUpMobileNoScreen());

      case SignUpMobileCodeScreen.routeName:
        return route(const SignUpMobileCodeScreen());

      case SignUpCreatePassword.routeName:
        return route(const SignUpCreatePassword());

      case SignUpWelcomeBackScreen.routeName:
        return route(const SignUpWelcomeBackScreen());

      case SignUpEnterPassCodeScreen.routeName:
        return route(const SignUpEnterPassCodeScreen());

      case SignUpEnablePushNotifScreen.routeName:
        return route(const SignUpEnablePushNotifScreen());

      case ProfileScreen.routeName:
        return route(const ProfileScreen(
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
