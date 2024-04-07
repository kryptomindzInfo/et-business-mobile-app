import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/home_Screen_textfields.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/team_section_bottom_sheets/create_new_role_btm_sheet.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/admin_footer_section.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/admin_listview.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/admin_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_textstyle.dart';
import '../../../../../resources/localization/language_constrants.dart';
import '../../../common_widgets/app_common_widgets.dart';
import '../../../common_widgets/header_icon_with_text.dart';

class AdminScreen extends ConsumerWidget {
  static const String routeName = "admin_screen";
  const AdminScreen({super.key});

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
                title: getTranslated("admin", context),
                description: getTranslated("no_one_assigned", context),
                trailingImage: AppAssets.addIconBold,
                rightPadding: 10,
                onTrailingiconPress: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => const CreateNewRoleBottomSheet(),
                  );
                },
              ),
              10.spaceY,
              const AdminOptions(),
              20.spaceY,
              const HomeScreenSearchTextfield(
                  // color: AppColors.greywhite,
                  ),
              10.spaceY,
              Text(
                getTranslated("cant_find", context),
                style: AppTextstyle.headingTextStyle(
                  color: context.theme.colorTheme.normalTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  overflow: TextOverflow.clip,
                ),
              ),
              const AdminscreenListview(),
              const AdminFooterSection()
            ],
          ),
        ),
      ),
    );
  }
}
