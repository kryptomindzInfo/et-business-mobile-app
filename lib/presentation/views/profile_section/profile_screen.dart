import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_header_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_info_card.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_main_card.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  static const String routeName = "profile_screen";
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImageWidget(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileHeaderWidget(),
                20.spaceY,
                ProfileScreenOptionsWidget(),
                20.spaceY,
                ProfileScreenMainCard(),
                20.spaceY,
                ProfileInfoCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
