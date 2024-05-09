import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/merchant_section/merchant_widget_container.dart';
import 'package:etbank_business_app/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MerchantWidget extends ConsumerWidget {
  const MerchantWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView(
      // physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.only(bottom: 0),

      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      // runSpacing: 10,
      // spacing: 10,
      children: ref
          .read(homescreenProvider)
          .merchatndataList
          .map((e) => MerchantWidgetContainer(
                title: e["title"],
                imageicon: e["icon"],
                subtitle: e["desc"],
                
                // subtitleColor: e["color"],
              ))
          .toList(),
    );
  }
}
