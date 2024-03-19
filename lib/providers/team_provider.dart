import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final teamscreenProvider =
    ChangeNotifierProvider<TeamProvider>((ref) => TeamProvider());

class TeamProvider extends ChangeNotifier {
  TextEditingController _invitationController = TextEditingController();
  TextEditingController get invitationController => _invitationController;
}
