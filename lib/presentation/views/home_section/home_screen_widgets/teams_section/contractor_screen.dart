import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../resources/localization/language_constrants.dart';
import '../../../common_widgets/app_common_widgets.dart';
import '../../../common_widgets/header_icon_with_text.dart';

class ContractorScreen extends ConsumerWidget {
  static const String routeName = "contractor_screen";
  const ContractorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              HeaderIconWithTitle(
                imageicon: AppAssets.arrowLeft,
                title: getTranslated("Contractor", context),
                description: getTranslated("no_one_assigned", context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
