import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/roles_info_text_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_colors.dart';
import '../../../common_widgets/app_common_appbar.dart';

class ManageRolesScreen extends ConsumerWidget {
  static const String routeName = "Manage_roles_screen";
  const ManageRolesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              HeaderIconWithTitle(
                // imageicon: AppAssets.arrowLeft,
                title: getTranslated("roles", context),
              ),
              20.spaceY,
              const CommonWhiteFlexibleCard(
                widget: Column(
                  children: [
                    RolesInfoTextWidget(
                      title: "Accountant",
                      subtitle: "Custom role",
                    ),
                    RolesInfoTextWidget(
                      title: "Admin",
                      subtitle: "Complete access to account",
                    ),
                    RolesInfoTextWidget(
                      title: "Contractor",
                      subtitle: "Custom role",
                    ),
                    RolesInfoTextWidget(
                      title: "Member",
                      subtitle: "Custom role",
                    ),
                    RolesInfoTextWidget(
                      title: "Viewer · 1",
                      subtitle: "Read-only access",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
