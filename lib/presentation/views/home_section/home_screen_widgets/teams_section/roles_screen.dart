import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/admin_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/assign_role_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/roles_with_details.dart';
import 'package:etbank_business_app/providers/team_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common_widgets/app_common_appbar.dart';
import '../../../common_widgets/white_flexible_card.dart';
import '../home_Screen_textfields.dart';

class RolesScreen extends ConsumerWidget {
  static const String routeName = "RolesScreen";
  const RolesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: CommonAppBar(
            etBankLogo: true,
            leading: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Image.asset(
                AppAssets.arrowLeftShort,
                color: context.theme.colorTheme.whiteColor,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: GestureDetector(
                  onTap: () {
                    Navigation.pushNamed(AssignRoleScreen.routeName);
                  },
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.yellowGreen,
                        image: DecorationImage(
                            image: AssetImage(AppAssets.plusicon), scale: 2)),
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Column(
                children: [
                  HeaderIconWithTitle(
                    title: getTranslated("Roles", context),
                    spaceBtw: 8,
                    widget: Container(
                      height: 28,
                      width: 28,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
                          image: DecorationImage(
                              image: AssetImage(AppAssets.plusicon), scale: 2)),
                    ),
                    rightPadding: 10,
                  ),
                  0.spaceY,
                  CommonWhiteFlexibleCard(
                    padding: const EdgeInsets.fromLTRB(12, 16, 12, 30),
                    borderRadius: 12,
                    color: context.theme.colorTheme.businessDetailsContainer,
                    border: Border.all(
                      color: context.theme.colorTheme.transparentToTeal,
                    ),
                    widget: SizedBox(
                      height: 320,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:
                            ref.watch(teamscreenProvider).assignRoleData.length,
                        itemBuilder: (context, index) {
                          return RolesWithDetails(
                            radioButton: false,
                            buttonColor: AppColors.grassGreen,
                            buttonTextColor: AppColors.white,
                            isSelected: int.parse(ref
                                        .watch(teamscreenProvider)
                                        .assignRoleData[index]["id"]) ==
                                    ref.watch(teamscreenProvider).roleId
                                ? true
                                : false,
                            onpress: () {
                              ref.read(teamscreenProvider).getRoleId(int.parse(
                                  ref
                                      .read(teamscreenProvider)
                                      .assignRoleData[index]["id"]));
                            },
                            title: ref
                                .read(teamscreenProvider)
                                .assignRoleData[index]["title"],
                            subtitile: ref
                                .read(teamscreenProvider)
                                .assignRoleData[index]["desc"],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
