import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final   pageControllerProvider = Provider<PageController>((ref) {
  return PageController();
});

final activePageIndexProvider = StateProvider<int>((ref) {
  return 0; // Initial active page index is 0
});

final upgradeScreenIndexProvider = StateProvider<int>((ref) {
  return 0; // Initial active page index is 0
});
