import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/dashboard_section/dashboard_main_card.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/dashboard_section/dashboard_main_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/see_all_widget.dart';

class DashBoardWidget extends ConsumerWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const DashboardMainCard(),
      
      ],
    );
  }
}
