import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'profile_screen_chips.dart';

class ProfileScreenOptionsWidget extends ConsumerWidget {
  const ProfileScreenOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ref.read(profilescreenProvider).profileScreenOptions.length,
        itemBuilder: (context, index) {
          final item =
              ref.read(profilescreenProvider).profileScreenOptions[index];

          return ProfileScreenChips(
            color:
                index == 0 ? context.theme.colorTheme.yellowGreenColor : null,
            title: item["title"],
            icon: item["icon"],
            imageIconColor:
                index == 0 ? context.theme.colorTheme.blackColor : null,
            onpress: item["ontap"],
            titleColor: index == 0
                ? context.theme.colorTheme.blackColor
                : AppColors.white,
          );
        },
      ),
    );
  }
}
