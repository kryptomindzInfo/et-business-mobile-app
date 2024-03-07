import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/info_card_common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_colors.dart';
import 'home_info_card_text.dart';

class HomeInfoCardWidget extends ConsumerWidget {
  const HomeInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoCardCommonWidget(
        child: Column(
      children: [
        // 20.spaceY,
        InfoTextWidget(),
        // 10.spaceY,
        InfoTextWidget(),
        // 10.spaceY,
        InfoTextWidget(),
        // 20.spaceY,
      ],
    ));
  }
}
