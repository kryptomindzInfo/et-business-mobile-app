import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/custom_bottom_navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/home_screen_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common_widgets/app_common_widgets.dart';

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
