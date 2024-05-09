import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/static_data/home_screen_static_data.dart';

final profilescreenProvider = ChangeNotifierProvider<ProfileScreenProvider>(
    (ref) => ProfileScreenProvider());

class ProfileScreenProvider extends ChangeNotifier {
  List<Map> get upgradeData => getupgradeData;
  List<Map> get profileScreenOptions => getprofileScreenOptions;

  String _lightDark = "light";
  String get lightDark => _lightDark;
  int _selectedPlan = 0;
  int get selectedPlan => _selectedPlan;

  changeLightAndDarkTheme(String val) {
    _lightDark = val;
    notifyListeners();
  }

  selectPlan(int val) {
    _selectedPlan = val;
    notifyListeners();
  }
}
