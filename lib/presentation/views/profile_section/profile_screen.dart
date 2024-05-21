import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_header_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_info_card.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_main_card.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  static const String routeName = "profile_screen";
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
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
                  const ProfileHeaderWidget(),
                  20.spaceY,
                  const ProfileScreenOptionsWidget(),
                  20.spaceY,
                  const ProfileScreenMainCard(),
                  20.spaceY,
                  const ProfileInfoCard()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
