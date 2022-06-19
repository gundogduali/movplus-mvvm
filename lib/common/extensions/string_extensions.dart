extension StringExtension on String {
  String intelliTrim() {
    return length > 25 ? '${substring(0, 25)}...' : this;
  }

  String dateSubstring() {
    if (length < 4) return this;
    return substring(0, 4);
  }
}
