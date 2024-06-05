import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_create_password_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_otp_code_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpMobileOTPCodeScreen extends ConsumerWidget {
  static const String routeName = "Mobile_OTP";

  const SignUpMobileOTPCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OTPVerification(
      description: 'mobile_otp_text',
      onCompleted: (value) {
        Navigation.pushNamed(SignUpCreatePassword.routeName);
      },
      // text1: "a",
      text1: "${getTranslated("code_hasnt_arrived_retry", context)} 0:58",
      text2: '',
    );
  }
}
