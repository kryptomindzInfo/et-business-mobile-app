import 'package:etbank_business_app/presentation/views/rates_section/rates_screen_widgets.dart/rates_screen.chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/rates_provider.dart';

class RatesScreenOptionsWidget extends ConsumerWidget {
  const RatesScreenOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ref.read(ratesScreenProvider).ratesOptions.length,
        itemBuilder: (context, index) {
          final key =
              ref.read(ratesScreenProvider).ratesOptions.keys.elementAt(index);
          final value = ref.read(ratesScreenProvider).ratesOptions[key];
          return RatesScreenChips(
            title: value,
          );
        },
      ),
    );
  }
}
