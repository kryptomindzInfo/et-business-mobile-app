import 'package:etbank_business_app/constants/static_data/profile_screen_static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final paymentProvider =
    ChangeNotifierProvider<PaymentProvider>((ref) => PaymentProvider());

class PaymentProvider extends ChangeNotifier {
  List<Map> get paymentScreenOption => paymentScreenopt;
  int _paymentScreenOptionIndex = 0;
  int get paymentScreenOptionIndex => _paymentScreenOptionIndex;

  selectedPaymntOptionsIndex(int val) {
    _paymentScreenOptionIndex = val;
    notifyListeners();
  }
}
