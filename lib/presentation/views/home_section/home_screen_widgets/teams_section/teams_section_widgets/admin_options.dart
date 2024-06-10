import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../resources/localization/language_constrants.dart';
import '../../../../common_widgets/common_green_button.dart';

class AdminOptions extends ConsumerWidget {
  const AdminOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonGreenButton(
          padding: const EdgeInsets.only(left: 11, right: 14),
          title: getTranslated("save_a_copy", context),
          borderColor: context.theme.colorTheme.transparentToYellow,
          height: 42,
          borderRadius: 64,
          textColor: AppColors.white,
          color: context.theme.colorTheme.transparentToGreen,
          imageIcon: AppAssets.plus,
          imageHeight: 13,
        ),
        CommonGreenButton(
          padding: const EdgeInsets.only(left: 11, right: 14),
          title: getTranslated("rename", context),
          imageHeight: 13,
          iconColor: Colors.white,
          imageIcon: AppAssets.editicon,
          borderColor: context.theme.colorTheme.transparentToYellow,
          height: 42,
          borderRadius: 64,
          textColor: AppColors.white,
          color: context.theme.colorTheme.transparentToGreen,
        ),
        CommonGreenButton(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          imageIcon: AppAssets.menudots,
          imageHeight: 5,
          borderColor: context.theme.colorTheme.transparentToYellow,
          height: 42,
          borderRadius: 64,
          textColor: AppColors.white,
          color: context.theme.colorTheme.transparentToGreen,
        )
      ],
    );
  }
}
