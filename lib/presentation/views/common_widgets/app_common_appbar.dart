import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? etBankLogo;
  final Widget? widget;
  const CommonAppBar({super.key, this.etBankLogo, this.widget});
  @override
  Widget build(BuildContext context) {
    // ThemeData theme = Theme.of(context);
    return AppBar(
      title: etBankLogo == true
          ? Image.asset(
              AppAssets.appbarLogo,
              height: 40,
            )
          : widget != null
              ? widget
              : SizedBox(),
      centerTitle: true,
      // surfaceTintColor: AppColors.transparent,
      // elevation: 10,
      iconTheme: IconThemeData(color: context.theme.colorTheme.blackAndWhite),
      // systemOverlayStyle: SystemUiOverlayStyle(
      //     // statusBarColor: context.theme.colorTheme.appBarColor,
      //     ),
      backgroundColor: context.theme.colorTheme.appBarColor,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
