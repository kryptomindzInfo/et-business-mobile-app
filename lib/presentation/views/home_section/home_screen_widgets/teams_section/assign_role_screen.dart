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
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/roles_with_details.dart';
import 'package:etbank_business_app/providers/team_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common_widgets/app_common_appbar.dart';
import '../../../common_widgets/white_flexible_card.dart';
import '../home_Screen_textfields.dart';

class AssignRoleScreen extends ConsumerWidget {
  static const String routeName = "assign_role_screen";
  const AssignRoleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              children: [
                HeaderIconWithTitle(
                  // imageicon: AppAssets.arrowLeft,
                  title: getTranslated("assign_role", context),
                  spaceBtw: 8,
                  description: getTranslated("select_role", context),
                  // trailingImage: AppAssets.addgreenbutton,
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
                  // trailingImageHeight: 30,
                ),
                20.spaceY,
                const HomeScreenSearchTextfield(
                    // color: AppColors.greywhite,
                    ),
                30.spaceY,
                CommonWhiteFlexibleCard(
                  color: context.theme.colorTheme.businessDetailsContainer,
                  widget: SizedBox(
                    height: 250,
                    child: ListView.builder(
                      itemCount:
                          ref.watch(teamscreenProvider).assignRoleData.length,
                      itemBuilder: (context, index) {
                        return RolesWithDetails(
                          isSelected: int.parse(ref
                                      .watch(teamscreenProvider)
                                      .assignRoleData[index]["id"]) ==
                                  ref.watch(teamscreenProvider).roleId
                              ? true
                              : false,
                          onpress: () {
                            ref.read(teamscreenProvider).getRoleId(int.parse(ref
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
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: PrimaryButton(
                      minwidth: 280,
                      color: AppColors.yellowGreen,
                      text: Text(
                        getTranslated("continue", context),
                        style: AppTextstyle.bodyTextStyle(
                          color: AppColors.black,
                        ),
                      ),
                      onPressed: () {
                        Navigation.pushNamed(AdminScreen.routeName);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
