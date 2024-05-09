import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/header_icon_with_text.dart';

class CurrencySellHeader extends ConsumerWidget {
  const CurrencySellHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Expanded(
          child: HeaderIconWithTitle(
            // imageicon: AppAssets.arrowLeft,
            title: "+\$1.35",
            greenDescription: "Sell £1",
            fontsize: 31,
          ),
        ),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Image.asset(
                AppAssets.roundukflag,
                height: 50,
              ),
            ),
          ],
        )),
      ],
    );
  }
}
