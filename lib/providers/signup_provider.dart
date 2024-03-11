import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/app_print.dart';

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

  // Country of Incorporation

  String? _countryOfIncorporation = '';

  String? get countryOfIncorporation => _countryOfIncorporation;

  void setcountryOfIncorporation(String? country) {
    _countryOfIncorporation = country;
    notifyListeners();
  }

  String? _postCode = '';

  String? get postCode => _postCode;

  void setPostCode(String? postCode) {
    _postCode = postCode;
    console('wwwwwwwwwwwwwww');

    notifyListeners();
  }

  void notify() {
    notifyListeners();
  }

  List get companyRolesList => companyRoles;
  int _selectedRole = 0;
  int get selectedRole => _selectedRole;
  changeRole(int value) {
    _selectedRole = value;
    notifyListeners();
  }
}

List companyRoles = [
  {
    "title": "role_1_title",
    "subtitle": "role_1_subtitle",
    "image": AppAssets.companyIcon,
  },
  {
    "title": "role_2_title",
    "subtitle": "role_2_subtitle",
    "image": AppAssets.freelancerIcon,
  },
  {
    "title": "role_3_title",
    "subtitle": "role_3_subtitle",
    "image": AppAssets.personIcon,
  },
  {
    "title": "not_sure_what_to_choose",
    "subtitle": "",
    "image": AppAssets.personIcon,
  },
];
