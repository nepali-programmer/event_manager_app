import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String dateWithDash() {
    DateFormat dateFormat = DateFormat('y-MM-d');
    return dateFormat.format(this);
  }
}
