import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpStateProvider = ChangeNotifierProvider((ref) => SignUpState());

class SignUpState extends ChangeNotifier {
  //  Email
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  bool get isEmailEmpty => _emailController.text.isEmpty;

  // MobileNo

  final TextEditingController _mobileNoController = TextEditingController();
  TextEditingController get mobileNoController => _mobileNoController;

  bool get isMobileNoEmpty => _mobileNoController.text.isEmpty;

  // Password

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  bool get isPasswordEmpty => _passwordController.text.isEmpty;

  // Password Text On Conditon

  String _passwordConditionText = '';

  String get passwordConditionText => _passwordConditionText;

  void updatepasswordConditionText(String newpasswordConditionText) {
    _passwordConditionText = newpasswordConditionText;
    notifyListeners();
  }

  bool get containsSpecialCharacters {
    RegExp specialChars = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return specialChars.hasMatch(_passwordConditionText);
  }

  // SelectedCountry

  String? _selectedCountry;

  String? get selectedCountry => _selectedCountry;

  void setSelectedCountry(String? country) {
    _selectedCountry = country;
    notifyListeners();
  }

  // Password Obscure

  bool _isObscured = true;

  bool get isObscured => _isObscured;

  void togglePasswordVisibility() {
    _isObscured = !_isObscured;
    notifyListeners();
  }

  // PassCode

  String _passCode = '';
  String get passCode => _passCode;

  void setPassCode(String value) {
    _passCode = value;
  }

  void notify() {
    notifyListeners();
  }
}
