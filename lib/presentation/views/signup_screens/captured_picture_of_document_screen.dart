import 'dart:ffi';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:capture_identity/capture_identity.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_verifications_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/captured_image_widgets/captured_image_container.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_colors.dart';
import '../../../providers/signup_provider.dart';

class CapturedImageOfDocument extends ConsumerWidget {
  static const String routeName = "captured_image_screen";
  const CapturedImageOfDocument({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: context.theme.colorTheme.appBackgroundColor,
      appBar: CommonAppBar(
        etBankLogo: true,
      ),
      body: Column(
        children: [
          30.spaceY,
          Text(
            getTranslated("verify_identity", context),
            style: AppTextstyle.headingTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: context.theme.colorTheme.normalTextColor),
          ),
          70.spaceY,
          CapturedImageContainer(
            capturedFile: ref.watch(signUpStateProvider).idCapture,
          ),
          70.spaceY,
          CommonButton(
            width: 320,
            title: getTranslated("license_readable", context),
            titleColor: context.theme.colorTheme.buttonTitleColor,
            mainButtonColor: context.theme.colorTheme.buttonColor,
            onpress: () {
              Navigation.pushNamed(SignUpVerificationsScreen.routeName);
            },
          ),
          10.spaceY,
          CommonButton(
            width: 320,
            title: getTranslated("take_picture", context),
            titleColor: context.theme.colorTheme.buttonTitleColor,
            mainButtonColor: context.theme.colorTheme.disableButtonColor,
          ),
        ],
      ),
    );
  }
}
