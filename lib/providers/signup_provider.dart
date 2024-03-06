import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailStateProvider = ChangeNotifierProvider((ref) => SignUpState());

class SignUpState extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  bool get isEmailEmpty => _emailController.text.isEmpty;
  String _email = '';

  String get email => _email;

  set email(String email) {
    _email = email;
    notifyListeners();
  }
}

Color buttonColor(bool value) => value ? Colors.black : Colors.green;
