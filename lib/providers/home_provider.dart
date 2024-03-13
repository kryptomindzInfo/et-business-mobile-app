import 'package:etbank_business_app/constants/static_data/profile_screen_static_data.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_widget.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/dashboard_section/dashboard_widget.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homescreenProvider =
    ChangeNotifierProvider<HomeScreenProvider>((ref) => HomeScreenProvider());

class HomeScreenProvider extends ChangeNotifier {
  List<Map> get homeScreenOptions => homeOptions;
  int _selectedHomeScreenOption = 0;
  int get selectedHomeScreenOption => _selectedHomeScreenOption;
  final List<Widget> _homeScreenOptionsWidgets = [
    DashBoardWidget(),
    CardsWidgets(),
    TeamsWidget()
  ];
  List<Widget> get homeScreenOptionsWidgets => _homeScreenOptionsWidgets;
  selectedHomeOption(int index) {
    _selectedHomeScreenOption = index;
    notifyListeners();
  }
}
