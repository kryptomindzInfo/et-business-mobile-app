import 'package:etbank_business_app/constants/app_colors.dart';
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
          final key = ref.read(homescreenProvider).homeScreenOptions;
          // final value = ref.read(homescreenProvider).homeScreenOptions[key];
          return HomeChips(
            title: key[index]["title"],
            color:
                ref.read(homescreenProvider).selectedHomeScreenOption == index
                    ? AppColors.tealColor
                    : Colors.black,
            onpress: () {
              ref.watch(homescreenProvider).selectedHomeOption(index);
            },
          );
        },
      ),
    );
  }
}
