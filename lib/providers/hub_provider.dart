import 'package:etbank_business_app/constants/static_data/home_screen_static_data.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_apps_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final hubProvider = ChangeNotifierProvider<HubProvider>((ref) => HubProvider());

class HubProvider extends ChangeNotifier {
  List<Map> get hubScreenOptions => hubscreenOpt;
  int _hubSectionOptionIndex = 0;
  int get hubSectionOptionIndex => _hubSectionOptionIndex;

  Widget get hubScreenWidget =>
      _hubScreenOptionWidgets.elementAt(_hubSectionOptionIndex);

  final List<Widget> _hubScreenOptionWidgets = [MyAppTabWidget()];

  selectedHubOptionsIndex(int val) {
    _hubSectionOptionIndex = val;
    notifyListeners();
  }
}
