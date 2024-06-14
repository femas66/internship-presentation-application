import 'package:intl/intl.dart';

class DateHelper {
  static String stringFormatWithTime(String date) {
    final a = DateTime.parse(date);
    String formattedDate = DateFormat('dd/MMM/yyyy HH:mm').format(a);
    return formattedDate;
  }

  static String stringFormatTimeOnly(String date) {
    final a = DateTime.parse(date);
    String formattedDate = DateFormat('HH:mm:ss').format(a);
    return formattedDate;
  }

  static String? stringFormatDateOnly(String? date) {
    if (date != null) {
      final a = DateTime.parse(date);
      String formattedDate = DateFormat('dd/MMM/yyyy').format(a);
      return formattedDate;
    } else {
      return null;
    }
  }
}