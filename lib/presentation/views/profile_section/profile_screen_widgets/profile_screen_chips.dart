import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/chips.dart';

class ProfileScreenChips extends ConsumerWidget {
  final String? title;
  final String? icon;
  const ProfileScreenChips({super.key, this.icon, this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(
      title: title!,
      imageicon: icon!,
    );
  }
}
