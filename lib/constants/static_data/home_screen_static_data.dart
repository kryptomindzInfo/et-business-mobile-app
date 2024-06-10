import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:flutter/material.dart';
import '../../navigation/navigation.dart';
import '../../navigation/navigator_key.dart';
import '../../presentation/views/profile_section/profile_screen_bottom_sheets/upgrade_bottom_sheet.dart';
import '../../presentation/views/profile_section/refer_business/refer_business_screen.dart';
import '../app_textstyle.dart';

List<Map> _profileScreenOptions = [
  {
    "title": "Upgrade",
    'icon': AppAssets.upgradeicon,
    'titleStyle': AppTextstyle.bodyTextStyle(
        fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.black),
    "ontap": () {
      showModalBottomSheet(
        context: appContext,
        isScrollControlled: true,
        builder: (context) => UpgradeBottomSheet(
          icon: AppAssets.crossicon,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              // builder: (context) => const ConfirmationBottomSheet(),
              builder: (context) => ConfirmationBottomSheet(
                onPressed: () {
                  Navigation.pushNamed(ReferBusinessScreen.routeName);
                },
              ),
            );
          },
        ),
      );
    }
  },
  {
    "title": "Refer a business",
    "icon": AppAssets.favrouriteicon,
    'titleStyle': AppTextstyle.bodyTextStyle(
        fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.white),
    "ontap": () {
      Navigation.pushNamed(ReferBusinessScreen.routeName);
    }
  },
];

List<Map> get getprofileScreenOptions => _profileScreenOptions;

List<Map> _upgradeData = [
  {
    "title": "Free",
    // "price": 25,
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
    "title": "Grow",
    "price": '£25',
    'isPopular': true,
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
    "price": '£100',
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
      },
      {
        "title": "Exchange £50k at the interbank rate ",
        "subtitle":
            "A £0.20 fee applies per local payment outside of the free allowance",
        "icon": AppAssets.exchangeWhite
      }
    ]
  },
  {
    "title": "Enterprise",
    "price": '£150',
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

List<Map> _ratesScreenOptions = [
  {"title": "Rates"},
  {"title": "Coverter"},
  {"title": "Actions"}
];

List<Map> get ratesScreenOptions => _ratesScreenOptions;

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
    "color": AppColors.red
  },
  {
    "title": "Choose a plan and order a card",
    "desc": null,
    "icon": null,
    "color": AppColors.black
  },
  {"title": "Submit documentation", "desc": null, "icon": null, "color": null},
  {
    "title": "Verifying business details",
    "desc": "Ready to submit",
    "icon": AppAssets.hourglassicon,
    "color": AppColors.white
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
      "image": AppAssets.greencardForslider,
    }
  },
  {
    "title": "Virtual Debit Card",
    "data": {
      "description": "best_for_online",
      "icon": AppAssets.virtualCard,
      "image": AppAssets.silvercardForslider,
    }
  }
];

List<Map> get getCardsData => _getCardsData;

List<Map> _paymentScreen = [
  {"title": "Transfer"},
  {"title": "request"},
  {"title": "Scheduled"},
];

List<Map> get paymentScreenopt => _paymentScreen;

List<Map> _hubScreen = [
  {"title": "My Apps"},
  {"title": "Integration"},
];

List<Map> get hubscreenOpt => _hubScreen;

List<Map> _rolesData = [
  {"title": "accountant", "desc": "custom_role", "id": "0"},
  {"title": "admin", "desc": "complete_access_to_account", "id": "1"},
  {"title": "Contractor", "desc": "custom_role", "id": "2"},
  {"title": "member", "desc": "costume_role", "id": "3"},
  {"title": "viewer", "desc": "read_only", "id": "4"},
];

List<Map> get rolesData => _rolesData;

List<Map> _adminData = [
  {"title": "account", "icon": AppAssets.accounticon, "id": "0"},
  {"title": "cards", "icon": AppAssets.cards, "id": "1"},
  {"title": "team", "icon": AppAssets.teamicon, "id": "2"},
  {"title": "merchant", "icon": AppAssets.merchant, "id": "3"},
];

List<Map> get admindata => _adminData;
