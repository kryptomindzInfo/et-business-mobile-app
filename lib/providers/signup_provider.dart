import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/static_data/signup_screen_static_data.dart';
import '../core/app_print.dart';
import '../globals/countries_list.dart';

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

  Countries? _selectedCountry;
  Countries? get selectedCountry => _selectedCountry ?? allCountries.first;
  void setSelectedCountry(int index) {
    _selectedCountry = allCountries[index];
    notifyListeners();
  }

  Countries? _userPersonalDetailsSelectedCountry;
  Countries? get userPersonalDetailsSelectedCountry =>
      _userPersonalDetailsSelectedCountry ?? allCountries.first;
  void setUserPersonalDetailsSelectedCountry(int index) {
    _userPersonalDetailsSelectedCountry = allCountries[index];
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

  // Business Activity Controller

  final TextEditingController _businessActivityController =
      TextEditingController();
  TextEditingController get businessActivityController =>
      _businessActivityController;

  // Country of Incorporation

  String? _countryOfIncorporation = '';

  String? get countryOfIncorporation => _countryOfIncorporation;
// allCountriess=>allCountries;
  void setcountryOfIncorporation(int index) {
    _countryOfIncorporation = allCountries[index].name;
    notifyListeners();
  }

  // PostCode

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

  // Company Roles

  List get companyRolesList => companyRoles;
  int _selectedRole = 0;
  int get selectedRole => _selectedRole;
  changeRole(int value) {
    _selectedRole = value;
    notifyListeners();
  }

  // Reasons for UsingEtBank

  List<int> selectedReasonsForUsingEtBank = [];
  setSelectedReasonForUsingEtBank(int value) {
    if (selectedReasonsForUsingEtBank.contains(value)) {
      selectedReasonsForUsingEtBank.remove(value);
    } else {
      selectedReasonsForUsingEtBank.add(value);
    }
    notifyListeners();
  }

  // Types of Customers

  List<int> selectedCustomerTypes = [];
  setselectedCustomerTypes(int value) {
    if (selectedCustomerTypes.contains(value)) {
      selectedCustomerTypes.remove(value);
    } else {
      selectedCustomerTypes.add(value);
    }
    notifyListeners();
  }

  // How You Sell Products

  List<int> howYouSellProductsOptions = [];
  sethowYouSellProductsOptions(int value) {
    if (howYouSellProductsOptions.contains(value)) {
      howYouSellProductsOptions.remove(value);
    } else {
      howYouSellProductsOptions.add(value);
    }
    notifyListeners();
  }

  // User Personal Deatails Leagal First Name Controller

  final TextEditingController _legalFirstNameController =
      TextEditingController();
  TextEditingController get legalFirstNameController =>
      _legalFirstNameController;

  // User Personal Deatails Leagal Last Name Controller

  final TextEditingController _legalLastNameController =
      TextEditingController();
  TextEditingController get legalLastNameController => _legalLastNameController;

  // User Personal Deatails DOB Controller

  final TextEditingController _userPersonDetailsDOBController =
      TextEditingController();
  TextEditingController get userPersonDetailsDOBController =>
      _userPersonDetailsDOBController;

  // User Personal Deatails Nationality Controller

  final TextEditingController _userPersonDetailsNationalityController =
      TextEditingController();
  TextEditingController get userPersonDetailsNationalityController =>
      _userPersonDetailsNationalityController;

  // User Personal Deatails Nationality Controller

  final TextEditingController _userPersonDetailsEmailController =
      TextEditingController();
  TextEditingController get userPersonDetailsEmailController =>
      _userPersonDetailsEmailController;

  // Country of Residence

  Countries? _countryOfResidence;

  Countries get countryOfResidence => _countryOfResidence ?? allCountries.first;

  void setcountryOfResidence(int index) {
    _countryOfResidence = allCountries[index];
    notifyListeners();
  }
}
