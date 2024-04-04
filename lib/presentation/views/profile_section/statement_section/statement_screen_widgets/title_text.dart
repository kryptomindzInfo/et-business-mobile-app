import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_textstyle.dart';

class TitleText extends ConsumerWidget {
  final String? title;
  const TitleText({super.key, this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      title!,
      style: AppTextstyle.bodyTextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: context.theme.colorTheme.normalTextColor),
    );
  }
}
