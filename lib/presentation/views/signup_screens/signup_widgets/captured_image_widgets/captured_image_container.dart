import 'dart:io';

import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CapturedImageContainer extends ConsumerWidget {
  final String imagePath;
  const CapturedImageContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(6),
              image: DecorationImage(
                  image: FileImage(File(imagePath)), fit: BoxFit.cover)),
        ),
        40.spaceY,
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(
            getTranslated("make_sure_license", context),
            textAlign: TextAlign.center,
            style: AppTextstyle.headingTextStyle(
                fontSize: 18,
                color: context.theme.colorTheme.normalTextColor,
                fontWeight: FontWeight.normal,
                overflow: TextOverflow.clip),
          ),
        )
      ],
    );
  }
}
