import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../globals/countries_list.dart';

final sendingCurrencyProvider =
    ChangeNotifierProvider((ref) => SendingCurrencyProvider());

class SendingCurrencyProvider extends ChangeNotifier {
  // Company and Individul Buttons Selection

  bool _companySelected = true;
  bool get companySelected => _companySelected;

  setCompanySelected(bool value) {
    _companySelected = value;
    notifyListeners();
  }

  // Country Contoller

  final TextEditingController _countryController = TextEditingController();
  TextEditingController get countryController => _countryController;

  // Country Contoller

  final TextEditingController _currencyController = TextEditingController();
  TextEditingController get currencyController => _currencyController;

  // Country Contoller

  final TextEditingController _accountNoController = TextEditingController();
  TextEditingController get accountNoController => _accountNoController;

  // Country Contoller

  final TextEditingController _sortCodeController = TextEditingController();
  TextEditingController get sortCodeController => _sortCodeController;

  // Selected Country

  Countries? _selectedCountry;
  Countries? get selectedCountry => _selectedCountry;
  void setSelectedCountry(int index) {
    _selectedCountry = allCountries[index];
    notifyListeners();
  }
}
