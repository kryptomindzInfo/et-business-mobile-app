import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final invoiceRequestProvider =
    ChangeNotifierProvider((ref) => InvoiceRequestProvider());

class InvoiceRequestProvider extends ChangeNotifier {
  // Company and Individul Buttons Selection

  bool _companySelected = true;
  bool get companySelected => _companySelected;

  setCompanySelected(bool value) {
    _companySelected = value;
    notifyListeners();
  }

  // Message Email Set as Defualt

  bool _emailMessageSetAsDefault = true;
  bool get emailMessageSetAsDefault => _emailMessageSetAsDefault;

  toggleEmailMessageSetAsDefault() {
    _emailMessageSetAsDefault = !_emailMessageSetAsDefault;
    notifyListeners();
  }

  // Automatic Reminders Set as Defualt

  bool _automaticRemindersSetAsDefault = true;
  bool get automaticRemindersSetAsDefault => _automaticRemindersSetAsDefault;

  toggleAutomaticRemindersSetAsDefault() {
    _automaticRemindersSetAsDefault = !_automaticRemindersSetAsDefault;
    notifyListeners();
  }

  // Quantity

  int _quantity = 0;
  int get quantity => _quantity;

  incrementQuantity() {
    _quantity++;
    notifyListeners();
  }

  decrementQuantity() {
    if (_quantity > 0) {
      _quantity--;
      notifyListeners();
    }
  }

  // Send Automatic Reminder

  bool _sendAutomaticReminders = false;
  bool get sendAutomaticReminders => _sendAutomaticReminders;

  toggleSendAutomaticReminders() {
    _sendAutomaticReminders = !_sendAutomaticReminders;
    notifyListeners();
  }

  // Automatic Reminders Set as Defualt

  bool _invoiceNumberSetAsDefault = true;
  bool get invoiceNumberSetAsDefault => _invoiceNumberSetAsDefault;

  toggleInvoiceNumberSetAsDefault() {
    _invoiceNumberSetAsDefault = !_invoiceNumberSetAsDefault;
    notifyListeners();
  }
}
