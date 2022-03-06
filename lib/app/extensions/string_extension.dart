extension CoreStringExtension on String {
  String replaceDoubleSlash() {
    return replaceAll('//', '/').trim();
  }
}