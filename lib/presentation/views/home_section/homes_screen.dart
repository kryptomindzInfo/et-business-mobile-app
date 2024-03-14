import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../common_widgets/app_common_widgets.dart';
import '../common_widgets/custom_bottom_navigation.dart';
import '../common_widgets/see_all_widget.dart';
import 'home_screen_widgets/home_Screen_textfields.dart';
import 'home_screen_widgets/home_main_card.dart';
import 'home_screen_widgets/home_main_info_card.dart';
import 'home_screen_widgets/home_screen_header.dart';
import 'home_screen_widgets/home_screen_options_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String routeName = "home_screen";
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        // extendBody: true,
        // resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            60.spaceY,
            HomeScreenHeader(
              onpress: () {
                Navigation.pushNamed(ProfileScreen.routeName);
              },
            ),
            20.spaceY,
            const HomeScreenSearchTextfield(),
            15.spaceY,
            const HomeScreenOptionsWidget(),
          ]),
        ),
        bottomNavigationBar: CustomBottomNavigation(
          onTap: (p0) {},
        ),
      ),
    );
  }
}
