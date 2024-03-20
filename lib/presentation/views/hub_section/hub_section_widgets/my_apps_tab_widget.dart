import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_tab_main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAppTabWidget extends ConsumerWidget {
  const MyAppTabWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [MyAppTabMainCard()],
    );
  }
}
