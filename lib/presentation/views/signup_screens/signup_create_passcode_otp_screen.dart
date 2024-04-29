import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enable_face_id_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_otp_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpCreatePassCodeOTPCodeScreen extends ConsumerWidget {
  static const String routeName = "Create_Pass_Code_OTP";

  const SignUpCreatePassCodeOTPCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OTPVerification(
      description: 'mobile_otp_text',
      onCompleted: (value) {
        Navigation.pushNamed(SignUpEnableFaceIdScreen.routeName);
      },
      text2Color: context.theme.colorTheme.primaryColor,
    );
  }
}
