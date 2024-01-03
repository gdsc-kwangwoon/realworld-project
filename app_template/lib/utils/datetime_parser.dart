DateTime? strToDt(String? datetime) {
  if (datetime == null) {
    return null;
  }
  return DateTime.parse(datetime);
}
