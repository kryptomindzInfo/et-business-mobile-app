import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? bgColor;
  final Color? logoColor;
  const CommonAppBar({super.key, this.bgColor, this.logoColor});
  @override
  Widget build(BuildContext context) {
    // ThemeData theme = Theme.of(context);
    return AppBar(
      title: Image.asset(
        AppAssets.appbarLogo,
        height: 40,
      ),
      centerTitle: true,
      surfaceTintColor: AppColors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: context.theme.colorTheme.blackAndWhite),
      // systemOverlayStyle: SystemUiOverlayStyle(
      //     // statusBarColor: context.theme.colorTheme.appBarColor,
      //     ),
      backgroundColor: context.theme.colorTheme.appBarColor,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 70);
}
