import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class PopularWidget extends ConsumerWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.black.withOpacity(0.28),
              border: Border.all(color: AppColors.tealColor),
              image: const DecorationImage(
                  image: AssetImage(AppAssets.popularicon), scale: 2)),
          // child: Center(
          //   child: Image.asset(image!),
          // ),
        ),
        5.spaceY,
        Text(
          "Popular",
          style: AppTextstyle.headingTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: context.theme.colorTheme.normalTextColor),
        ),
      ],
    );
  }
}
