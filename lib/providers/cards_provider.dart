import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_assets.dart';
import '../constants/static_data/profile_screen_static_data.dart';

final cardscreenProvider =
    ChangeNotifierProvider<CardsProvider>((ref) => CardsProvider());

class CardsProvider extends ChangeNotifier {
  List _cards = [AppAssets.silvercardForslider, AppAssets.greencardForslider];
  List get cards => _cards;
  double _cardIndex = 0;
  double get cardIndex => _cardIndex;
  bool _expenseReportingBool = false;
  bool get expenseReportingBool => _expenseReportingBool;
  List<Map> get getCardsScreenData => getCardsData;
  int _getCardsScreenIndex = 0;
  int get getCardsScreenIndex => _getCardsScreenIndex;
  getCardIndex(double val) {
    _cardIndex = val;
    notifyListeners();
  }

  expenseReportingSwitch(bool val) {
    _expenseReportingBool = val;
    notifyListeners();
  }

  getCardsScreenIndexftn(int val) {
    _getCardsScreenIndex = val;

    notifyListeners();
  }
}
