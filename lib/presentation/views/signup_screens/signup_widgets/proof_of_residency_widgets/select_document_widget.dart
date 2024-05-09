import 'dart:io';

import 'package:capture_identity/capture_identity.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../providers/signup_provider.dart';
import '../common_icon_title_icon_button.dart';

class SelectDocumentWidget extends ConsumerWidget {
  const SelectDocumentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // File? idCapture;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getTranslated("select_doc", context),
          style: AppTextstyle.bodyTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: context.theme.colorTheme.headerDescriptionColor),
        ),
        20.spaceY,
        Container(
          height: 116,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                color: context.theme.colorTheme.borderColor,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonIconTitleIconButton(
                title: getTranslated("passport", context),
                onpress: () async {
                  File? image = await showCapture(
                    context: context,
                    title: "Scan ID",
                    hideIdWidget: true,
                  );
                  ref.watch(signUpStateProvider).getCapturedDocImage(image!);
                },
                isForwardIcon: true,
              ),
              CommonIconTitleIconButton(
                title: getTranslated("driving_license", context),
                onpress: () async {
                  File? image = await showCapture(
                    context: context,
                    title: "Scan ID",
                    hideIdWidget: true,
                  );
                  ref.watch(signUpStateProvider).getCapturedDocImage(image!);
                },
                isForwardIcon: true,
              )
            ],
          ),
        )
      ],
    );
  }
}
