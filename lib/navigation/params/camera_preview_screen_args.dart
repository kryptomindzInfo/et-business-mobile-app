class CameraPreviewScreenArgs {
  final Function(String) onCapture;
  final String title;
  final String desc;
  CameraPreviewScreenArgs(
      {required this.onCapture, required this.title, required this.desc});
}
