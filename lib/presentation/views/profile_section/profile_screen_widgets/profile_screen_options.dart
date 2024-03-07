import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/profile_Chips_Bottom_Sheet.dart';
import 'package:etbank_business_app/providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'profile_screen_chips.dart';

class ProfileScreenOptionsWidget extends ConsumerWidget {
  const ProfileScreenOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ref.read(profilescreenProvider).profileScreenOptions.length,
        itemBuilder: (context, index) {
          final item =
              ref.read(profilescreenProvider).profileScreenOptions[index];
          return ProfileScreenChips(
            title: item["title"],
            icon: item["icon"],
            onpress: item["ontap"],
          );
        },
      ),
    );
  }
}
