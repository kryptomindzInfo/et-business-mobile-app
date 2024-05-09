import 'package:etbank_business_app/constants/static_data/home_screen_static_data.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_section_widgets/cards_tab_main_widget.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/dashboard_section/dashboard_widget.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/merchant_section/merchant_widget.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/teams_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homescreenProvider =
    ChangeNotifierProvider<HomeScreenProvider>((ref) => HomeScreenProvider());

class HomeScreenProvider extends ChangeNotifier {
  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  List<Map> get homeScreenOptions => homeOptions;
  int _selectedHomeScreenOption = 0;
  int get selectedHomeScreenOption => _selectedHomeScreenOption;
  Widget get selectedHomeScreenOptionWidget =>
      _homeScreenOptionsWidgets.elementAt(_selectedHomeScreenOption);
  List<Map> get merchatndataList => merchantData;
  final List<Widget> _homeScreenOptionsWidgets = [
    const DashBoardWidget(),
    const CardsMainWidget(),
    const TeamsWidget(),
    const MerchantWidget()
  ];
  // List<Widget> get homeScreenOptionsWidgets => _homeScreenOptionsWidgets;

  set pageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }

  selectedHomeOption(int index) {
    _selectedHomeScreenOption = index;
    notifyListeners();
  }
}
