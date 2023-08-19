import 'package:intl/intl.dart';

class Formatting {

  /// [DateTime] -> [String] formatting
  static String formatDateToString(DateTime dateTime) {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');

    return dateFormat.format(dateTime);
  }
}