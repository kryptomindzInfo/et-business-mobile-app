import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_apps_tab_widgets/myApp_tab_essentials_widget.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_apps_tab_widgets/my_apps_tab_payment_widget.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_apps_tab_widgets/my_tab_main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAppTabWidget extends ConsumerWidget {
  const MyAppTabWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyAppTabMainCard(),
        24.spaceY,
        const MyApptabEssentialWidget(),
        24.spaceY,
        const MyApptabPaymentWidget(),
        20.spaceY,
      ],
    );
  }
}
