import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_assets.dart';

final cardscreenProvider =
    ChangeNotifierProvider<CardsProvider>((ref) => CardsProvider());

class CardsProvider extends ChangeNotifier {
  List _cards = [AppAssets.silvercardForslider, AppAssets.greencardForslider];
  List get cards => _cards;
  double _cardIndex = 0;
  double get cardIndex => _cardIndex;
  getCardIndex(double val) {
    _cardIndex = val;
    notifyListeners();
  }
}
