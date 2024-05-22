import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_type_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_otp_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpEmailOTPCodeScreen extends ConsumerWidget {
  static const String routeName = "Email_OTP";

  const SignUpEmailOTPCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: OTPVerification(
        description: 'email_otp_text',
        text1: 'resend_code',
        text2: "make_sure_you_have_entered_correct_email",
        onCompleted: (value) {
          Navigation.pushNamed(SignUpBusinessTypeScreen.routeName);
        },
      ),
    );
  }
}
