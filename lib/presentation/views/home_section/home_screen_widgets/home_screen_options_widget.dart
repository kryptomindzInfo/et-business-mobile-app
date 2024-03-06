import 'package:etbank_business_app/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_chips.dart';

class HomeScreenOptionsWidget extends ConsumerWidget {
  const HomeScreenOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ref.read(homescreenProvider).homeScreenOptions.length,
        itemBuilder: (context, index) {
          final key = ref
              .read(homescreenProvider)
              .homeScreenOptions
              .keys
              .elementAt(index);
          final value = ref.read(homescreenProvider).homeScreenOptions[key];
          return HomeChips(value);
        },
      ),
    );
  }
}
