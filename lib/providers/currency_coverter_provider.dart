import 'package:etbank_business_app/constants/static_data/home_screen_static_data.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/actions_tab_widget.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/converter_tab_widget.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/rate_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_pair_card.dart';
import '../presentation/views/converting_currency/rates_tab_section/currencies_chart_screen.dart';

final currencyScreenProvider =
    ChangeNotifierProvider<CurrencyConverterProvider>(
        (ref) => CurrencyConverterProvider());

class CurrencyConverterProvider extends ChangeNotifier {
  final TextEditingController _firstCurrencyController =
      TextEditingController();
  TextEditingController get firstCurrencyController => _firstCurrencyController;
  final TextEditingController _secondCurrencyController =
      TextEditingController();
  TextEditingController get secondCurrencyController =>
      _secondCurrencyController;
  List<Map> get ratesOptions => ratesScreenOptions;
  final List<Widget> _currencyPairCards = [];
  List<Widget> get currencyPairCards => _currencyPairCards;
  int _currencyConverterTabIndex = 0;
  int get currencyConverterTabIndex => _currencyConverterTabIndex;
  Widget get selectedCurrencyConverterTabWidget =>
      _currencyConverterWidgets.elementAt(_currencyConverterTabIndex);
  final List<Widget> _currencyConverterWidgets = [
    const RatesTabWidget(),
    const ConverterTabWidget(),
    const ActionsTabWidget()
  ];
  bool _activateButton = false;
  bool get activateButton => _activateButton;
  addCurrencyPairCard() {
    _currencyPairCards.add(InkWell(
        onTap: () {
          Navigation.pushNamed(CurrenciesChartScreen.routeName);
        },
        child: const CurrencyPairCard()));
    notifyListeners();
  }

  setCCtabIndex(int val) {
    _currencyConverterTabIndex = val;
    notifyListeners();
  }

  activateButtonFtn() {
    if (_firstCurrencyController.text.isNotEmpty &&
        _secondCurrencyController.text.isNotEmpty) {
      print("ddddddddddd");
      _activateButton = true;
    } else {
      print("555555555555");
      _activateButton = false;
    }
    print("///////////");
    notifyListeners();
  }
}
