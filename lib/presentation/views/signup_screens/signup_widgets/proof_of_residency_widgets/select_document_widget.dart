import 'package:camera/camera.dart';
// import 'package:capture_identity/capture_identity.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/navigation/params/camera_preview_screen_args.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/proof_of_residency_widgets/camera_preview_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../main.dart';
import '../../../../../providers/signup_provider.dart';
import '../common_icon_title_icon_button.dart';

class SelectDocumentWidget extends ConsumerStatefulWidget {
  const SelectDocumentWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectDocumentWidgetState();
}

class _SelectDocumentWidgetState extends ConsumerState<SelectDocumentWidget> {
  @override
  Widget build(BuildContext context) {
    // File? idCapture;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getTranslated("select_doc", context),
          style: AppTextstyle.bodyTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: context.theme.colorTheme.headerDescriptionColor),
        ),
        20.spaceY,
        Container(
          height: 116,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                color: context.theme.colorTheme.borderColor,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonIconTitleIconButton(
                title: getTranslated("passport", context),
                // onpress: () async {
                //   File? image = await showCapture(
                //     context: context,
                //     title: "",
                //     hideIdWidget: true,
                //   );
                //   ref.watch(signUpStateProvider).getCapturedDocImageFront(image!);
                // },
                isForwardIcon: true,
              ),
              CommonIconTitleIconButton(
                title: getTranslated("driving_license", context),
                onpress: () async {
                  Navigation.pushNamed(
                    CameraPreviewScreen.routeName,
                    arguments: CameraPreviewScreenArgs(
                        // onTap: (){
                        //   ref
                        // .watch(signUpStateProvider)
                        // .getCapturedDocImageFront(image!);
                        // }
                        // child: GestureDetector(
                        //   onTap: () {},
                        //   child: const CircleAvatar(
                        //     child: Text('Take Pic'),
                        //   ),
                        // ),
                        ),
                  );
                  // CameraPreview(controller);
                  // File? image =
                  // await showCapture(
                  //   context: context,
                  //   title: "Front of driving licence",
                  //   hideIdWidget: true,
                  // );
                  // ref
                  //     .watch(signUpStateProvider)
                  //     .getCapturedDocImageFront(image!);
                },
                isForwardIcon: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}

// class SelectDocumentWidget extends ConsumerWidget {
//   const SelectDocumentWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // File? idCapture;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           getTranslated("select_doc", context),
//           style: AppTextstyle.bodyTextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.normal,
//               color: context.theme.colorTheme.headerDescriptionColor),
//         ),
//         20.spaceY,
//         Container(
//           height: 116,
//           width: double.infinity,
//           decoration: BoxDecoration(
//               border: Border.all(
//                 color: context.theme.colorTheme.borderColor,
//               ),
//               borderRadius: BorderRadius.circular(8)),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CommonIconTitleIconButton(
//                 title: getTranslated("passport", context),
//                 // onpress: () async {
//                 //   File? image = await showCapture(
//                 //     context: context,
//                 //     title: "",
//                 //     hideIdWidget: true,
//                 //   );
//                 //   ref.watch(signUpStateProvider).getCapturedDocImageFront(image!);
//                 // },
//                 isForwardIcon: true,
//               ),
//               CommonIconTitleIconButton(
//                 title: getTranslated("driving_license", context),
//                 onpress: () async {
//                   // File? image =
//                   // await showCapture(
//                   //   context: context,
//                   //   title: "Front of driving licence",
//                   //   hideIdWidget: true,
//                   // );
//                   // ref
//                   //     .watch(signUpStateProvider)
//                   //     .getCapturedDocImageFront(image!);
//                 },
//                 isForwardIcon: true,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
