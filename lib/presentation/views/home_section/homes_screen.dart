import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../common_widgets/app_common_widgets.dart';
import '../common_widgets/custom_bottom_navigation.dart';
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
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: AppMainWidget([
        60.spaceY,
        const HomeScreenHeader(),
        20.spaceY,
        const HomeScreenSearchTextfield(),
        15.spaceY,
        const HomeScreenOptionsWidget(),
        20.spaceY,
        const HomeMainCard(),
        20.spaceY,
        const SeeAllCommonWidget("Transactions", true),
        10.spaceY,
        const InfoCardCommonWidget()
      ]),
      bottomNavigationBar: CustomBottomNavigation(
        onTap: (p0) {},
      ),
    );
  }
}
