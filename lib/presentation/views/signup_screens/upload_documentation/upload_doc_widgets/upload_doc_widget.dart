import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/common_icon_title_icon_button.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'add_doc_bs_widget.dart';

class UploadDocWidget extends ConsumerWidget {
  const UploadDocWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      color: context.theme.colorTheme.businessDetailsContainer,
      border: Border.all(color: context.theme.colorTheme.transparentToTeal),
      padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 10),
      widget: Row(
        children: [
          CommonIconTitleIconButton(
            title: getTranslated("upload_doc", context),
            isForwardIcon: false,
            iconImage: AppAssets.addButton2x,
            onpress: () {
              showCommonModalSheet(
                context,
                337,
                const AddDocBottomSheetWidget(),
                crossAxisAlignment: CrossAxisAlignment.start,
              );
            },
          ),
        ],
      ),
    );
  }
}
