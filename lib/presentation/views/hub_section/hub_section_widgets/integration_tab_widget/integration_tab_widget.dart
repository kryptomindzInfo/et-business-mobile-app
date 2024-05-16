import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/hub_section_bottom_sheets/black_common_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/integration_tab_widget/integration_tab_main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IntegrationTabWidget extends ConsumerWidget {
  const IntegrationTabWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          IntegrationTabMainCard(
            title: 'Accounting',
            onpress: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => BlackCommonBottomSheet(
                title: "get_app_in_browser",
                subtitle: "login_from_computer_browser",
                buttonTitle: "done",
                image: AppAssets.appInBrowser,
                buttonPadding: 120.spaceY,
              ),
            ),
          ),
          20.spaceY,
          const IntegrationTabMainCard(
            title: 'Automation',
          ),
          20.spaceY,
          const IntegrationTabMainCard(
            title: 'Payments',
          ),
          // IntegrationTabMainCard()
        ],
      ),
    );
  }
}
