import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_assets.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? etBankLogo;
  final Widget? widget;
  final double? topPadding;
  const CommonAppBar(
      {super.key, this.etBankLogo, this.widget, this.topPadding});
  @override
  Widget build(BuildContext context) {
    // ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: topPadding ?? 0),
      child: AppBar(
        title: etBankLogo == true
            ? Image.asset(
                AppAssets.appbarLogo,
                height: 46,
                width: 154,
              )
            : widget ?? const SizedBox(),
        centerTitle: true,
        // surfaceTintColor: AppColors.transparent,
        // elevation: 10,
        iconTheme: IconThemeData(color: context.theme.colorTheme.blackAndWhite),
        // systemOverlayStyle: SystemUiOverlayStyle(
        //     // statusBarColor: context.theme.colorTheme.appBarColor,
        //     ),
        backgroundColor: context.theme.colorTheme.appBarColor,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
