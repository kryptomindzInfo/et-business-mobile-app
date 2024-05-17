import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_textstyle.dart';
import '../../../../../resources/localization/language_constrants.dart';

class EssentialIconWithTitle extends ConsumerWidget {
  final String? imageicon;
  final String? title;
  final double? imageHieght;
  final double? imageWidth;
  const EssentialIconWithTitle(
      {super.key,
      this.imageicon,
      this.title,
      this.imageHieght,
      this.imageWidth});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Image.asset(
          imageicon!,
          height: imageHieght ?? 40,
          width: imageWidth ?? 40,
        ),
        20.spaceY,
        Text(
          getTranslated(title!, context),
          style: AppTextstyle.bodyTextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: AppColors.white,
              overflow: TextOverflow.clip),
        )
      ],
    );
  }
}
