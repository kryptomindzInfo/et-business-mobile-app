class CapturedImageOfDocumentArgs {
  final Function()? onPressLicenceReadable;
  final Function()? onPressTakeNewPic;
  final String imagePath;
  CapturedImageOfDocumentArgs(
      {this.onPressLicenceReadable,
      this.onPressTakeNewPic,
      required this.imagePath});
}
