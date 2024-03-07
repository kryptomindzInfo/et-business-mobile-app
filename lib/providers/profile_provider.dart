import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/views/profile_section/profile_screen_bottom_sheets/profile_Chips_Bottom_Sheet.dart';

final profilescreenProvider = ChangeNotifierProvider<ProfileScreenProvider>(
    (ref) => ProfileScreenProvider());

class ProfileScreenProvider extends ChangeNotifier {
  List<Map> profileScreenOptions = [
    {
      "title": "Upgrade",
      'icon': AppAssets.upgradeicon,
      "ontap": () {
        showModalBottomSheet(
          context: appContext,
          isScrollControlled: true,
          builder: (context) => UpgradeBottomSheet(),
        );
      }
    },
    {
      "title": "Refer a business",
      "icon": AppAssets.favrouriteicon,
      "ontap": () {
        Navigation.pushNamed(ReferBusinessScreen.routeName);
      }
    },
  ];

  List<Map> upgradeData = [
    {
      "title": "Grow",
      "price": 25,
      "data": [
        {
          "title":
              "1 free Metal card + plastic and virtual cards for every member",
          "subtitle": "£49 per metal card outside of the free allowance",
          "icon": AppAssets.cardicon
        },
        {
          "title": "10 free international payments",
          "subtitle":
              "A £3 fee applies per international payment outside of the free allowance",
          "icon": AppAssets.intpaymenticon
        },
        {
          "title": "100 free local payments",
          "subtitle":
              "A £0.20 fee applies per local payment outside of the free allowance",
          "icon": AppAssets.localpaymenticon
        }
      ]
    },
    {
      "title": "Scale",
      "price": 100,
      "data": [
        {
          "title":
              "2 free Metal card + plastic and virtual cards for every member",
          "subtitle": "£49 per metal card outside of the free allowance",
          "icon": AppAssets.cardicon
        },
        {
          "title": "50 free international payments",
          "subtitle":
              "A £3 fee applies per international payment outside of the free allowance",
          "icon": AppAssets.intpaymenticon
        },
        {
          "title": "1000 free local payments",
          "subtitle":
              "A £0.20 fee applies per local payment outside of the free allowance",
          "icon": AppAssets.localpaymenticon
        }
      ]
    },
    {
      "title": "Enterprise",
      "price": 150,
      "data": [
        {
          "title":
              "1 free Metal card + plastic and virtual cards for every member",
          "subtitle": "£49 per metal card outside of the free allowance",
          "icon": AppAssets.cardicon
        },
        {
          "title": "10 free international payments",
          "subtitle":
              "A £3 fee applies per international payment outside of the free allowance",
          "icon": AppAssets.intpaymenticon
        },
        {
          "title": "100 free local payments",
          "subtitle":
              "A £0.20 fee applies per local payment outside of the free allowance",
          "icon": AppAssets.localpaymenticon
        }
      ]
    },
  ];

  String _lightDark = "light";
  String get lightDark => _lightDark;
  int _selectedPlan = 0;
  int get selectedPlan => _selectedPlan;

  changeLightAndDarkTheme(String val) {
    _lightDark = val;
    notifyListeners();
  }

  selectPlan(int val) {
    _selectedPlan = val;
    notifyListeners();
  }
}
