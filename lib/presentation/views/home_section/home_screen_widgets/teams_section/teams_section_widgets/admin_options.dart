import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../resources/localization/language_constrants.dart';
import '../../common_transparent_button.dart';

class AdminOptions extends ConsumerWidget {
  const AdminOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonGreyButton(
          title: "+ ${getTranslated("save_a_copy", context)}",
        ),
        CommonGreyButton(
          title: getTranslated("rename", context),
          imageIcon: AppAssets.editicon,
        ),
        CommonGreyButton(
          // title: getTranslated("rename", context),
          imageIcon: AppAssets.menudots, imageIconHeight: 4,
        )
      ],
    );
  }
}
