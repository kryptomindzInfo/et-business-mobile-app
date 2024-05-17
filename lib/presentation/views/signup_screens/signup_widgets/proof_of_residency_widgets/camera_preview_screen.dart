import 'package:camera/camera.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/core/app_print.dart';
import 'package:flutter/material.dart';
import '../../../../../navigation/params/camera_preview_screen_args.dart';
import 'capture_widget.dart';

class CameraPreviewScreen extends StatefulWidget {
  static const String routeName = 'CameraPr_Screen';

  final CameraPreviewScreenArgs params;

  const CameraPreviewScreen({
    super.key,
    required this.params,
  });

  @override
  State<CameraPreviewScreen> createState() => _CameraPreviewScreenState();
}

class _CameraPreviewScreenState extends State<CameraPreviewScreen> {
  CameraController? controller;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      initializeCamera();
    });
    super.initState();
  }

  initializeCamera() async {
    List<CameraDescription> cameras = await availableCameras();
    console(cameras.length);
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      console('catchhhhhhhhhhhhhhhhh');
      console(e);
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
  }

  @override
  void dispose() {
    console('disposeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        iconTheme: const IconThemeData(color: AppColors.white),
        actions: [
          IconButton(
              onPressed: () {
                controller?.setFlashMode(FlashMode.torch);
              },
              icon: Icon(Icons.flash_on))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            Center(
              child: controller == null
                  ? const SizedBox()
                  : CameraPreview(
                      controller!,
                    ),
            ),
            Column(
              children: [
                expanded(),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.transparent,
                      border: Border.all(color: AppColors.white, width: 1)),
                  height: 220,
                ),
                expanded(),
              ],
            ),
            CaptureWidget(
              title: widget.params.title,
              subTitle: widget.params.desc,
              onTap: () async {
                XFile? image = await controller?.takePicture();
                if (image != null) {
                  widget.params.onCapture(image.path);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

expanded() {
  return Expanded(
    child: Container(
      color: AppColors.black,
    ),
  );
}
