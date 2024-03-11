import 'package:etbank_business_app/presentation/views/common_widgets/chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RatesScreenChips extends ConsumerWidget {
  final String? title;
  const RatesScreenChips({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(
      title: title,
    );
  }
}
