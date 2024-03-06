import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profilescreenProvider = ChangeNotifierProvider<ProfileScreenProvider>(
    (ref) => ProfileScreenProvider());

class ProfileScreenProvider extends ChangeNotifier {
  List<Map> profileScreenOptions = [
    {"title": "Upgrade", 'icon': AppAssets.upgradeicon},
    {"title": "Refer a business", "icon": AppAssets.favrouriteicon},
  ];
}
