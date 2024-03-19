import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../../navigation/navigation.dart';
import '../../navigation/navigator_key.dart';
import '../../presentation/views/common_widgets/see_all_widget.dart';
import '../../presentation/views/home_section/home_screen_widgets/dashboard_section/dashboard_main_card.dart';
import '../../presentation/views/home_section/home_screen_widgets/dashboard_section/dashboard_main_info_card.dart';
import '../../presentation/views/profile_section/profile_screen_bottom_sheets/upgrade_bottom_sheet.dart';
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

List<Map> _homeScreenOptions = [
  {
    "title": "Dashboard",
  },
  {
    "title": "Cards",
  },
  {
    "title": "Team",
  },
  {
    "title": "Merchant",
  }
];

List<Map> get homeOptions => _homeScreenOptions;

List<Map> _merchantData = [
  {
    "title": "Business owners failed",
    "desc": "Please retry",
    "icon": AppAssets.markicon,
    "color": {AppColors.red}
  },
  {
    "title": "Choose a plan and order a card",
    "desc": "",
    "icon": "",
    "color": {AppColors.black}
  },
  {"title": "Submit documentation", "desc": "", "icon": "", "color": ""},
  {
    "title": "Verifying business details",
    "desc": "Ready to submit",
    "icon": AppAssets.hourglassicon,
    "color": {AppColors.black}
  },
  // {
  //   "title": "Identity",
  //   "desc": "Verified",
  //   "icon": AppAssets.greencheck,
  //   "color": AppColors.green
  // }
];

List<Map> get merchantData => _merchantData;

List<Map> _getCardsData = [
  {
    "title": "Debit Card",
    "data": {
      "description": "best_for_business",
      "icon": AppAssets.debitCard,
      "image": AppAssets.greencardForslider
    }
  },
  {
    "title": "Virtual Debit Card",
    "data": {
      "description": "best_for_online",
      "icon": AppAssets.virtualCard,
      "image": AppAssets.silvercardForslider
    }
  }
];

List<Map> get getCardsData => _getCardsData;
