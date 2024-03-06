import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/chips.dart';

class HomeChips extends ConsumerWidget {
  final String title;
  const HomeChips(this.title, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(title);
  }
}
