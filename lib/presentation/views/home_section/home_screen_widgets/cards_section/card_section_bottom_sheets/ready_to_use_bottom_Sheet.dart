// import 'package:etbank_business_app/constants/app_assets.dart';
// import 'package:etbank_business_app/constants/app_textstyle.dart';
// import 'package:etbank_business_app/extensions/sized_box.dart';
// import 'package:etbank_business_app/resources/localization/language_constrants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class ReadyToUseBottomSheet extends ConsumerWidget {
//   const ReadyToUseBottomSheet({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Container(
//       height: 311,
//       width: double.infinity,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(28)),
//       child: Column(
//         children: [
//           60.spaceY,
//           Image.asset(
//             AppAssets.checkout,
//             height: 80,
//           ),
//           20.spaceY,
//           Text(
//             getTranslated("ready_to_use", context),
//             style: AppTextstyle.bodyTextStyle(
//                 fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           20.spaceY,
//           Text(
//             getTranslated("use_it_online", context),
//             textAlign: TextAlign.center,
//             style: AppTextstyle.bodyTextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 overflow: TextOverflow.clip),
//           )
//         ],
//       ),
//     );
//   }
// }
