import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enable_push_notif_screen.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';

class SignUpEnterPassCodeScreen extends ConsumerWidget {
  static const String routeName = "signup_enter_passcode";

  const SignUpEnterPassCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('enter_passcode', context),
                imageicon: AppAssets.arrowLeft,
              ),
              220.spaceY,
              TextFormField(
                onChanged: (value) {
                  ref.read(signUpStateProvider).setPassCode(value);
                  if (value.length == 4) {
                    Navigation.pushNamed(SignUpEnablePushNotifScreen.routeName);
                  }
                },
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: getTranslated('enter_passcode_to_login', context),
                  hintStyle: AppTextstyle.bodyTextStyle(
                      color: AppColors.grey, fontSize: 16.sp),
                ),
                obscureText: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                height: 100.h,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          getTranslated('forgot_passcode', context),
                          style: AppTextstyle.bodyTextStyle(
                            color: AppColors.baseGreenColor,
                            fontSize: 16.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
