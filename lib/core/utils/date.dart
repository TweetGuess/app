import 'package:easy_localization/easy_localization.dart';

extension DateTimeFormatter on DateTime {
  String toDateTimeFormatMMMdY() {
    final formatter = DateFormat('MMM. d, y');
    return formatter.format(this);
  }
}
