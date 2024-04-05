import 'package:etbank_business_app/presentation/views/common_widgets/profile_pic_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../common_widgets/header_icon_with_text.dart';

class ProfileHeaderWidget extends ConsumerWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 9,
          child: HeaderIconWithTitle(
            title: "Brooklyn Simmons",
            description: "Louis Vuitton",
            imageicon: AppAssets.arrowLeft,
            etBankLogo: true,
            profilePicWidget: true,
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(bottom: 40),
        //   child: ProfilePicWidget(
        //     image: AppAssets.profileicon,
        //   ),
        // ),
      ],
    );
  }
}
