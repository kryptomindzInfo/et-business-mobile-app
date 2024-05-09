import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final Function(int) onTap;
  final int selected;
  const CustomBottomNavigation(
      {super.key, required this.onTap, this.selected = 0});
  static const List<Map<String, dynamic>> bottomNaviList = [
    {
      'icon': AppAssets.earthicon,
    },
    {
      'icon': AppAssets.globeicon,
    },
    {
      'icon': AppAssets.ufoicon,
    },
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BottomAppBar(
      elevation: 0,
      color: AppColors.transparent,
      child: SizedBox(
        height: 72,
        child: Row(children: [
          item(theme,
              icon: bottomNaviList[0]['icon'],
              isActive: selected == 0,
              onTap: () => onTap(0)),
          item(theme,
              icon: bottomNaviList[1]['icon'],
              isActive: selected == 1,
              onTap: () => onTap(1)),
          item(theme,
              icon: bottomNaviList[2]['icon'],
              isActive: selected == 2,
              onTap: () => onTap(2)),
        ]),
      ),
    );
  }

  item(ThemeData theme,
      {required String icon, bool isActive = false, required Function onTap}) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(),
        child: Image.asset(
          icon,
          color: isActive ? AppColors.primaryColor : AppColors.white,
          height: 35,
        ),
      ),
    );
  }
}
