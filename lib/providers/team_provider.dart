import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/static_data/home_screen_static_data.dart';

final teamscreenProvider =
    ChangeNotifierProvider<TeamProvider>((ref) => TeamProvider());

class TeamProvider extends ChangeNotifier {
  final TextEditingController _invitationController = TextEditingController();
  TextEditingController get invitationController => _invitationController;
  List<Map> get assignRoleData => rolesData;
  int? _roleId;
  int? get roleId => _roleId;
  List<Map> get adminScreenData => admindata;
  getRoleId(int val) {
    _roleId = val;
    notifyListeners();
  }
}
