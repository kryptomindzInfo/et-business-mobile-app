import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homescreenProvider =
    ChangeNotifierProvider<HomeScreenProvider>((ref) => HomeScreenProvider());

class HomeScreenProvider extends ChangeNotifier {
  Map homeScreenOptions = {
    "title1": "Dashboard",
    "title2": "Cards",
    "title3": "Team"
  };
}
