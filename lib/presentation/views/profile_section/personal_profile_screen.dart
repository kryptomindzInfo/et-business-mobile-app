import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../navigation/navigation.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../common_widgets/info_card_common_widget.dart';
import '../common_widgets/see_all_widget.dart';
import 'profile_screen_bottom_sheets/light_dark_bottom_sheet.dart';
import 'profile_screen_widgets/profile_info_text_widget.dart';
import 'statement_section/statement_screen.dart';

class PersonalProfileScreen extends ConsumerStatefulWidget {
  static const String routeName = "personal_profile_screen";
  const PersonalProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PersonalProfileScreenState();
}

class _PersonalProfileScreenState extends ConsumerState<PersonalProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const HeaderIconWithTitle(
                    title: "Profile",
                    // imageicon: AppAssets.arrowLeft,
                  ),
                  28.spaceY,
                  const SeeAllCommonWidget(
                    "Location",
                    false,
                  ),
                  8.spaceY,
                  InfoCardCommonWidget(
                    color: context.theme.colorTheme.businessDetailsContainer,
                    child: Column(
                      children: [
                        ProfileInfoTextWidget(
                          image: AppAssets.lang,
                          title: getTranslated("Language", context),
                          subTitle: 'English',
                        ),
                        ProfileInfoTextWidget(
                          image: AppAssets.timeZone,
                          title: getTranslated("Timezone", context),
                          onpress: () {},
                        ),
                      ],
                    ),
                  ),
                  16.spaceY,
                  const SeeAllCommonWidget(
                    "Appearance",
                    false,
                  ),
                  8.spaceY,
                  InfoCardCommonWidget(
                    color: context.theme.colorTheme.businessDetailsContainer,
                    child: Column(
                      children: [
                        ProfileInfoTextWidget(
                          image: AppAssets.theme,
                          title: getTranslated("Theme", context),
                          subTitle: 'System',
                          onpress: () {
                            showModalBottomSheet(
                              backgroundColor:
                                  context.theme.colorTheme.bottomSheetColor,
                              context: context,
                              builder: (context) => const ThemeBottomSheet(),
                            );
                          },
                        ),
                      ],
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
