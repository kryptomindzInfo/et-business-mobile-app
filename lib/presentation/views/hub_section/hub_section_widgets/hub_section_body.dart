import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/hub_section_chips.dart';
import 'package:etbank_business_app/providers/hub_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../resources/localization/language_constrants.dart';

class HubSectionBody extends ConsumerWidget {
  const HubSectionBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: ref.watch(hubProvider).hubScreenOptions.map((e) {
            int index = ref.read(hubProvider).hubScreenOptions.indexOf(e);
            return HubSectionChipe(
              title: getTranslated(e["title"], context),
              onpress: () {
                ref.read(hubProvider).selectedHubOptionsIndex(index);
              },
              color: ref.watch(hubProvider).hubSectionOptionIndex == index
                  ? AppColors.tealColor
                  : AppColors.black,
            );
          }).toList()),
        ),
        20.spaceY,
        ref.watch(hubProvider).hubScreenWidget
      ],
    );
  }
}
