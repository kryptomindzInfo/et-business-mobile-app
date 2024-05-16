import 'package:camera/camera.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../../navigation/params/camera_preview_screen_args.dart';

class CameraPreviewScreen extends StatefulWidget {
  static const String routeName = 'CameraPr_Screen';

  final CameraPreviewScreenArgs? params;

  const CameraPreviewScreen({
    super.key,
    this.params,
  });

  @override
  State<CameraPreviewScreen> createState() => _CameraPreviewScreenState();
}

class _CameraPreviewScreenState extends State<CameraPreviewScreen> {
  CameraController? controller;
  late List<CameraDescription> cameras;

  initializeCameras() async {
    cameras = await availableCameras();
  }

  @override
  void initState() {
    super.initState();
    initializeCameras().then((_) {
      controller = CameraController(cameras[0], ResolutionPreset.max);
      controller?.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      }).catchError((Object e) {
        if (e is CameraException) {
          switch (e.code) {
            case 'CameraAccessDenied':
              // Handle access errors here.
              break;
            default:
              // Handle other errors here.
              break;
          }
        }
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          controller == null
              ? const Text('camera initiating ...')
              : Center(
                  child: CameraPreview(
                    controller!,
                    child: Positioned(
                      bottom: 4,
                      left: 160,
                      child: GestureDetector(
                        onTap: () {
                          Future<XFile> image = controller!.takePicture();

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
                        child: Container(
                          width: 80,
                          height: 80,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.black,
                                width: 2,
                              ),
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
