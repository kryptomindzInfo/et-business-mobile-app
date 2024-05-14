import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../resources/localization/language_constrants.dart';
import '../../../../common_widgets/common_green_button.dart';
import '../../common_transparent_button.dart';

class AdminOptions extends ConsumerWidget {
  const AdminOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonGreenButton(
          title: getTranslated("save_a_copy", context),
          borderColor: AppColors.yellowGreen,
          height: 42,
          borderRadius: 64,
          textColor: AppColors.white,
          color: AppColors.transparent,
          imageIcon: AppAssets.plus,
          imageHeight: 13,
        ),
        CommonGreenButton(
          title: getTranslated("rename", context),
          imageHeight: 13,
          iconColor: Colors.white,
          imageIcon: AppAssets.editicon,
          borderColor: AppColors.yellowGreen,
          height: 42,
          borderRadius: 64,
          textColor: AppColors.white,
          color: AppColors.transparent,
        ),
        const CommonGreenButton(
          imageIcon: AppAssets.menudots,
          imageHeight: 5,
          borderColor: AppColors.yellowGreen,
          height: 42,
          borderRadius: 64,
          textColor: AppColors.white,
          color: AppColors.transparent,
        )
      ],
    );
  }
}
