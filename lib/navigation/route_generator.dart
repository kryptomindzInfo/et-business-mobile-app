import 'package:etbank_business_app/navigation/params/pincode_screen_args.dart';
import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_primary_reason_for_using_etbank_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_role_in_the_company_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/monthly_statement_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_details_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_type_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_check_email_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_create_password_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_otp_code_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enable_push_notif_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enter_passcode_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_mobile_num_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_registered_business_address_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_tailor_experience_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_welcome_back_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_busines_share_link_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen.dart';
import 'package:etbank_business_app/presentation/views/rates_section/rate_converter_screen.dart';
import 'package:flutter/material.dart';
// import 'package:projtemplate/navigation/params/home_screen_args.dart';
// import 'package:projtemplate/presentation/views/home_screen.dart';

import '../presentation/views/home_screen.dart';
import '../presentation/views/home_section/homes_screen.dart';
import '../presentation/views/signup_screens/signup_category_screen.dart';
import '../presentation/views/signup_screens/signup_create_passcode_screen.dart';
import '../presentation/views/signup_screens/signup_describe_business_activity_screen.dart';
import '../presentation/views/signup_screens/signup_directors_screen.dart';
import '../presentation/views/signup_screens/signup_enable_face_id_screen.dart';
import '../presentation/views/signup_screens/signup_how_many_payments_each_month_screen.dart';
import '../presentation/views/signup_screens/signup_how_you_sell_product_screen.dart';
import '../presentation/views/signup_screens/signup_maximum_single_payment_per_month_screen.dart';
import '../presentation/views/signup_screens/signup_sub_category_screen.dart';
import '../presentation/views/signup_screens/signup_where_you_conduct_business_screen.dart';
import '../presentation/views/signup_screens/signup_who_are_your_customers_screen.dart';
import '../presentation/views/signup_screens/signup_website_social_ecommerce_link_screen.dart';

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

      case SignUpOtpCodeScreen.routeName:
        return route(SignUpOtpCodeScreen(
            params: settings.arguments as PinCodeScreenArgs));

      case SignUpBusinessTypeScreen.routeName:
        return route(const SignUpBusinessTypeScreen());

      case SignUpMobileNoScreen.routeName:
        return route(const SignUpMobileNoScreen());

      case SignUpEnableFaceIdScreen.routeName:
        return route(const SignUpEnableFaceIdScreen());

      case SignPrimaryReasonForEtBankScreen.routeName:
        return route(const SignPrimaryReasonForEtBankScreen());

      case SignUpCategoryScreen.routeName:
        return route(const SignUpCategoryScreen());

      case SignUpSubCategoryScreen.routeName:
        return route(const SignUpSubCategoryScreen());

      case SignUpDescribeBusinessActivityScreen.routeName:
        return route(const SignUpDescribeBusinessActivityScreen());

      // case SignUpMobileCodeScreen.routeName:
      //   return route(const SignUpMobileCodeScreen());

      case SignUpCreatePassword.routeName:
        return route(const SignUpCreatePassword());

      case SignUpWelcomeBackScreen.routeName:
        return route(const SignUpWelcomeBackScreen());

      case SignUpEnterPassCodeScreen.routeName:
        return route(const SignUpEnterPassCodeScreen());

      case SignUpEnablePushNotifScreen.routeName:
        return route(const SignUpEnablePushNotifScreen());

      case SignUpTailorExperienceScreen.routeName:
        return route(const SignUpTailorExperienceScreen());

      case SignUpBusinessDetailsScreen.routeName:
        return route(const SignUpBusinessDetailsScreen());

      case SignUpRegisteredBusinessAddressScreen.routeName:
        return route(const SignUpRegisteredBusinessAddressScreen());

      case SignUpRoleInTheCompanyScreen.routeName:
        return route(const SignUpRoleInTheCompanyScreen());

      case SignUpCreatePassCodeScreen.routeName:
        return route(const SignUpCreatePassCodeScreen());

      case SignUpWhoAreYourCustomersScreen.routeName:
        return route(const SignUpWhoAreYourCustomersScreen());

      case SignUpHowYouSellProductScreen.routeName:
        return route(const SignUpHowYouSellProductScreen());

      case SignUpWebsiteSocialEcommerceLinkScreen.routeName:
        return route(const SignUpWebsiteSocialEcommerceLinkScreen());

      case SignUpHowManyPaymentsEachMonthScreen.routeName:
        return route(const SignUpHowManyPaymentsEachMonthScreen());

      case SignUpMaximumSinglePaymentPerMonthScreen.routeName:
        return route(const SignUpMaximumSinglePaymentPerMonthScreen());

      case SignUpWhereYouConductBusinessScreen.routeName:
        return route(const SignUpWhereYouConductBusinessScreen());

      case SignUpDirectorsScreen.routeName:
        return route(const SignUpDirectorsScreen());

      case ProfileScreen.routeName:
        return route(const ProfileScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ReferBusinessScreen.routeName:
        return route(const ReferBusinessScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ReferBusinessShareLinkScreen.routeName:
        return route(const ReferBusinessShareLinkScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case StatementScreen.routeName:
        return route(const StatementScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ProfileScreen.routeName:
        return route(const ProfileScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ReferBusinessScreen.routeName:
        return route(const ReferBusinessScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ReferBusinessShareLinkScreen.routeName:
        return route(const ReferBusinessShareLinkScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case StatementScreen.routeName:
        return route(const StatementScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case RatesAndConverterScreen.routeName:
        return route(const RatesAndConverterScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case MonthlyStatementScreen.routeName:
        return route(const MonthlyStatementScreen(
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
