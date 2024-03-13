import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:flutter/material.dart';
import '../../navigation/navigation.dart';
import '../../navigation/navigator_key.dart';
import '../../presentation/views/profile_section/profile_screen_bottom_sheets/profile_Chips_Bottom_Sheet.dart';
import '../../presentation/views/profile_section/refer_business/refer_business_screen.dart';

List<Map> _profileScreenOptions = [
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

List<Map> get getprofileScreenOptions => _profileScreenOptions;

List<Map> _upgradeData = [
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

List<Map> get getupgradeData => _upgradeData;

Map _ratesScreenOptions = {
  "title1": "Rates",
  "title2": "Coverter",
  "title3": "Actions"
};

Map get ratesScreenOptions => _ratesScreenOptions;
