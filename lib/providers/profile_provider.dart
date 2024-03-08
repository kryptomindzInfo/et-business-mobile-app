import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/static_data/profile_screen_static_data.dart';
import '../presentation/views/profile_section/profile_screen_bottom_sheets/profile_Chips_Bottom_Sheet.dart';

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
