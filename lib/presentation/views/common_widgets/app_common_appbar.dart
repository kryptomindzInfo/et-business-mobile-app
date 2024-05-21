import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_assets.dart';

class CommonAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final bool? etBankLogo;
  final Widget? widget;
  final Widget? leading;
  final List<Widget>? actions;
  final double? topPadding;
  const CommonAppBar(
      {super.key,
      this.etBankLogo,
      this.widget,
      this.topPadding,
      this.leading,
      this.actions});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding ?? 0,
      ),
      child: AppBar(
        leading: leading,
        actions: actions,
        title: etBankLogo == true
            ? Image.asset(
                ref.watch(themeProvider).themeMode == ThemeMode.dark
                    ? AppAssets.appbarLogo
                    : AppAssets.appbarLogoDark,
                height: 46,
                width: 154,
              )
            : widget ?? const SizedBox(),
        centerTitle: true,
        // surfaceTintColor: AppColors.transparent,
        // elevation: 10,
        iconTheme: IconThemeData(
          color: context.theme.colorTheme.whiteColor,
        ),
        // systemOverlayStyle: SystemUiOverlayStyle(
        //     // statusBarColor: context.theme.colorTheme.appBarColor,
        //     ),
        // backgroundColor: context.theme.colorTheme.bottomSheetColor,

        backgroundColor: context.theme.colorTheme.appBarColor,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
