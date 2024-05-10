import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/upgrade_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/bottom_sheets/business_details_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/signup_submit_documents_screen.dart';
import 'package:flutter/material.dart';

import '../app_assets.dart';

List companyRoles = [
  {
    "title": "role_1_title",
    "subtitle": "role_1_subtitle",
    "image": AppAssets.companyIcon,
  },
  {
    "title": "role_2_title",
    "subtitle": "role_2_subtitle",
    "image": AppAssets.freelancerIcon,
  },
  {
    "title": "role_3_title",
    "subtitle": "role_3_subtitle",
    "image": AppAssets.personIcon,
  },
  {
    "title": "not_sure_what_to_choose",
    "subtitle": "",
    "image": AppAssets.personIcon,
  },
];

List reasonsForUsingEtBank = [
  {
    "title": "receive_payments_from_customers",
  },
  {
    "title": "make_purchases_everyday",
  },
  {
    "title": "pay_suppliers_and_employees",
  },
  {
    "title": "manage_multiple_currencies",
  },
  {
    "title": "other_business_activities",
  },
];

List categories = [
  {
    "title": "category1",
  },
  {
    "title": "category2",
  },
  {
    "title": "category3",
  },
  {
    "title": "category4",
  },
  {
    "title": "category5",
  },
  {
    "title": "category6",
  },
  {
    "title": "category7",
  },
  {
    "title": "category8",
  },
  {
    "title": "category9",
  },
  {
    "title": "category10",
  },
  {
    "title": "category11",
  },
];

List subCategories = [
  {
    "title": "sub_category1",
  },
  {
    "title": "sub_category2",
  },
  {
    "title": "sub_category3",
  },
  {
    "title": "sub_category4",
  },
  {
    "title": "sub_category5",
  },
  {
    "title": "sub_category6",
  },
  {
    "title": "sub_category7",
  },
  {
    "title": "sub_category8",
  },
  {
    "title": "sub_category9",
  },
  {
    "title": "sub_category10",
  },
  {
    "title": "sub_category11",
  },
];

List customersTypes = [
  {
    "title": "individuals",
  },
  {
    "title": "businesses",
  },
  {
    "title": "public_or_government_bodies",
  },
  {
    "title": "charities_or_religious_groups",
  },
  {
    "title": "all_mentioned_above",
  }
];

List howYouSellProductOptions = [
  {
    "title": "physical_store",
  },
  {
    "title": "ecommerce_platform_or_marketplace",
  },
  {
    "title": "public_or_government_bodies",
  },
  {
    "title": "charities_or_religious_groups",
  },
  {
    "title": "all_mentioned_above",
  }
];

List paymentRanges = [
  '<£1,000',
  '£1,000- £10,000',
  '£10,000 - £100,000',
  '£100,000+',
];

List<Map> _verificationData = [
  {
    "title": "choose_a_plan_and_order_a_card",
    "icon": AppAssets.plancardicon,
    "status": "",
    "statusicon": AppAssets.greencheck,
    "ontap": () {
      showModalBottomSheet(
        context: appContext,
        isScrollControlled: true,
        builder: (context) => const UpgradeBottomSheet(),
      );
    },
    "color": appContext.theme.colorTheme.grassGreen,
  },
  {
    "title": "submit_doc",
    "icon": AppAssets.submitdocicon,
    "status": "",
    "statusicon": "",
    "ontap": () {
      Navigation.pushNamed(SignUpSubmitDocumentScreen.routeName);
    },
    "color": appContext.theme.colorTheme.grassGreen,
  },
  {
    "title": "verify_business",
    "icon": AppAssets.verifybusinessdetailsicon,
    "status": "ready_to_submit",
    "statusicon": AppAssets.whitehourglass,
    "ontap": () {}
  },
  {
    "title": "verify_business_details",
    "icon": AppAssets.verifybusinessownersicon,
    "status": "ready_to_submit",
    "statusicon": AppAssets.whitehourglass,
    "ontap": () {
      showCommonModalSheet(appContext, 300, const BusinessDetailsBottomSheet());
    }
  },
  {
    "title": "identity",
    "icon": AppAssets.identityicon,
    "status": "verified",
    "statusicon": AppAssets.greencheck,
    "ontap": () {}
  }
];

List<Map> get verificationData => _verificationData;
