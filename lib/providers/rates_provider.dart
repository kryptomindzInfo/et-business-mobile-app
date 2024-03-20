import 'package:etbank_business_app/constants/static_data/home_screen_static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/views/rates_section/rates_screen_widgets.dart/currency_pair_card.dart';

final ratesScreenProvider =
    ChangeNotifierProvider<RatesProvider>((ref) => RatesProvider());

class RatesProvider extends ChangeNotifier {
  Map get ratesOptions => ratesScreenOptions;
  List<Widget> _currencyPairCards = [];
  List<Widget> get currencyPairCards => _currencyPairCards;

  addCurrencyPairCard() {
    _currencyPairCards.add(CurrencyPairCard());
    notifyListeners();
  }
}
