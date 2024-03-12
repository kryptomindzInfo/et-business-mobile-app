import 'package:etbank_business_app/constants/static_data/profile_screen_static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homescreenProvider =
    ChangeNotifierProvider<HomeScreenProvider>((ref) => HomeScreenProvider());

class HomeScreenProvider extends ChangeNotifier {
  List<Map> get homeScreenOptions => homeOptions;
  int _selectedHomeScreenOption = 0;
  int get selectedHomeScreenOption => _selectedHomeScreenOption;
  selectedHomeOption(int index) {
    _selectedHomeScreenOption = index;
    notifyListeners();
  }
}
