import 'package:etbank_business_app/navigation/params/camera_preview_screen_args.dart';
import 'package:etbank_business_app/navigation/params/captured_image_of_document_args.dart';
import 'package:etbank_business_app/navigation/params/onboarding_args.dart';
import 'package:etbank_business_app/presentation/views/bottom_navigation_bar.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/currencies_chart_screen.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/currency_exchange_converter_screen.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/currency_sell_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/card_settings_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/get_card_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/my_cards_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/admin_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/assign_role_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/contractor_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/invite_to_et_bank_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/manage_roles_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/owner_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/roles_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/add_customer_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/add_items_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/add_new_customer_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/automatic_reminders_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/billing_details_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/email_message_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/invoice_number_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/invoice_screen.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/mark_as_paid_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/notification_screen.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/upgrade_section/upgrade_screens.dart';
import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/personal_profile_screen.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/account_details_screen.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/enter_amount_screen.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/show_account_details_screen.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/who_to_pay_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/business_details/get_more_from_business_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/captured_picture_of_document_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/get_plastic_card_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/sign_in_sign_up_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_confirm_delivery_address.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_primary_reason_for_using_etbank_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_proof_residency_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_role_in_the_company_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/monthly_statement_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_details_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_type_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_check_email_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_create_password_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enable_push_notif_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enter_passcode_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_mobile_num_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_registered_business_address_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/proof_of_residency_widgets/camera_preview_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/choose_document_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/incorporation_document_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/review_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/signup_submit_documents_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_tailor_experience_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_user_personal_details_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_verifications_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_verify_identities_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_verify_users_identity_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_welcome_back_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_busines_share_link_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen.dart';
import 'package:flutter/material.dart';
// import 'package:projtemplate/navigation/params/home_screen_args.dart';
// import 'package:projtemplate/presentation/views/home_screen.dart';

import '../presentation/views/home_section/homes_screen.dart';
import '../presentation/views/sending_currency_screens/account_details_otp_code_screen.dart';
import '../presentation/views/signup_screens/signup_category_screen.dart';
import '../presentation/views/signup_screens/signup_create_passcode_otp_screen.dart';
import '../presentation/views/signup_screens/signup_create_passcode_screen.dart';
import '../presentation/views/signup_screens/signup_describe_business_activity_screen.dart';
import '../presentation/views/signup_screens/signup_directors_screen.dart';
import '../presentation/views/signup_screens/signup_email_otp_code_screen.dart';
import '../presentation/views/signup_screens/signup_enable_face_id_screen.dart';
import '../presentation/views/signup_screens/signup_how_many_payments_each_month_screen.dart';
import '../presentation/views/signup_screens/signup_how_you_sell_product_screen.dart';
import '../presentation/views/signup_screens/signup_maximum_single_payment_per_month_screen.dart';
import '../presentation/views/signup_screens/signup_mobile_otp_code_screen.dart';
import '../presentation/views/signup_screens/signup_sub_category_screen.dart';
import '../presentation/views/signup_screens/signup_user_home_address_screen.dart';
import '../presentation/views/signup_screens/signup_where_you_conduct_business_screen.dart';
import '../presentation/views/signup_screens/signup_who_are_your_customers_screen.dart';
import '../presentation/views/signup_screens/signup_website_social_ecommerce_link_screen.dart';
import 'params/home_screen_args.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case BaseBottomNavBar.routeName:
        return route(BaseBottomNavBar(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case HomeScreen.routeName:
        return route(const HomeScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));

      case Onboarding.routeName:
        return route(Onboarding(params: settings.arguments as OnboardingArgs));
      case SignInSignUpScreen.routeName:
        return route(const SignInSignUpScreen());

      case SignUpEmailScreen.routeName:
        return route(const SignUpEmailScreen());

      case SignUpCheckEmailScreen.routeName:
        return route(const SignUpCheckEmailScreen());

      case SignUpEmailOTPCodeScreen.routeName:
        return route(const SignUpEmailOTPCodeScreen());

      case SignUpMobileOTPCodeScreen.routeName:
        return route(const SignUpMobileOTPCodeScreen());

      case SignUpCreatePassCodeOTPCodeScreen.routeName:
        return route(const SignUpCreatePassCodeOTPCodeScreen());

      case AccountDetailsOTPCodeScreen.routeName:
        return route(const AccountDetailsOTPCodeScreen());

      // case SignUpOtpCodeScreen.routeName:
      //   return route(SignUpOtpCodeScreen(
      //       // params: settings.arguments as PinCodeScreenArgs
      //       ));

      case SignUpBusinessTypeScreen.routeName:
        return route(const SignUpBusinessTypeScreen());

      case SignUpMobileNoScreen.routeName:
        return route(const SignUpMobileNoScreen());

      case SignUpEnableFaceIdScreen.routeName:
        return route(const SignUpEnableFaceIdScreen());

      case SignUpPrimaryReasonForEtBankScreen.routeName:
        return route(const SignUpPrimaryReasonForEtBankScreen());

      case SignUpCategoryScreen.routeName:
        return route(const SignUpCategoryScreen());

      case SignUpSubCategoryScreen.routeName:
        return route(const SignUpSubCategoryScreen());

      case SignUpDescribeBusinessActivityScreen.routeName:
        return route(const SignUpDescribeBusinessActivityScreen());

      case InvoiceSreen.routeName:
        return route(const InvoiceSreen());

      case AddCustomerScreen.routeName:
        return route(const AddCustomerScreen());

      case AddNewCustomerScreen.routeName:
        return route(const AddNewCustomerScreen());

      case BillingDetailsScreen.routeName:
        return route(const BillingDetailsScreen());

      case EmailMessageScreen.routeName:
        return route(const EmailMessageScreen());

      case AddItemsScreen.routeName:
        return route(const AddItemsScreen());

      case AutomaticRemindersScreen.routeName:
        return route(const AutomaticRemindersScreen());

      case InvoiceNumberScreen.routeName:
        return route(const InvoiceNumberScreen());

      case MarkAsPaidScreen.routeName:
        return route(const MarkAsPaidScreen());

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

      case SignUpVerifyIdentitiesScreen.routeName:
        return route(const SignUpVerifyIdentitiesScreen());

      case SignUpVerifyUserIdentityScreen.routeName:
        return route(const SignUpVerifyUserIdentityScreen());

      case SignUpUserPersonalDetailsScreen.routeName:
        return route(const SignUpUserPersonalDetailsScreen());

      case SignUpUserHomeAddressScreen.routeName:
        return route(const SignUpUserHomeAddressScreen());

      case WhoToPayScreen.routeName:
        return route(const WhoToPayScreen());

      case AccountDetailsScreen.routeName:
        return route(const AccountDetailsScreen());

      case EnterAmountScreen.routeName:
        return route(const EnterAmountScreen());

      case ShowAccountDetailsScreen.routeName:
        return route(const ShowAccountDetailsScreen());

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
      case ConverterCurrencyScreen.routeName:
        return route(const ConverterCurrencyScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case MonthlyStatementScreen.routeName:
        return route(const MonthlyStatementScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case MyCardsScreen.routeName:
        return route(const MyCardsScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case CardSettingsScreen.routeName:
        return route(const CardSettingsScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case OwnerScreen.routeName:
        return route(const OwnerScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case GetCardScreen.routeName:
        return route(
            GetCardScreen(params: settings.arguments as GetCardScreenArgs));
      case InviteToETBankScreen.routeName:
        return route(const InviteToETBankScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ManageRolesScreen.routeName:
        return route(const ManageRolesScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case UpgradeScreens.routeName:
        return route(UpgradeScreens(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case NotificationScreen.routeName:
        return route(const NotificationScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case CurrenciesChartScreen.routeName:
        return route(CurrenciesChartScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case CurrencyExchangeConverterScreen.routeName:
        return route(const CurrencyExchangeConverterScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case CurrencySellScreen.routeName:
        return route(const CurrencySellScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case AssignRoleScreen.routeName:
        return route(const AssignRoleScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case AdminScreen.routeName:
        return route(const AdminScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ContractorScreen.routeName:
        return route(const ContractorScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ProofOfResidencyScreen.routeName:
        return route(const ProofOfResidencyScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case CapturedImageOfDocument.routeName:
        return route(CapturedImageOfDocument(
            params: settings.arguments as CapturedImageOfDocumentArgs));
      case SignUpVerificationsScreen.routeName:
        return route(const SignUpVerificationsScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case GetPlasticCardScreen.routeName:
        return route(const GetPlasticCardScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case SignupConfirmDeliveryAddress.routeName:
        return route(const SignupConfirmDeliveryAddress(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case SignUpSubmitDocumentScreen.routeName:
        return route(const SignUpSubmitDocumentScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ChooseDocumentScreen.routeName:
        return route(const ChooseDocumentScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case IncorporationDocumentScreen.routeName:
        return route(const IncorporationDocumentScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case ReviewScreen.routeName:
        return route(const ReviewScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));
      case GetMoreFromBusinessScreen.routeName:
        return route(const GetMoreFromBusinessScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));

      case PersonalProfileScreen.routeName:
        return route(const PersonalProfileScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));

      case RolesScreen.routeName:
        return route(const RolesScreen(
            // params: settings.arguments as HomeScreenArgs?
            ));

      case CameraPreviewScreen.routeName:
        return route(
          CameraPreviewScreen(
            params: settings.arguments as CameraPreviewScreenArgs,
          ),
        );
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
