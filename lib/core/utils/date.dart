import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension DateTimeFormatter on DateTime {
  String toDateTimeFormatMMMdY(BuildContext context) {
    final formatter =
        DateFormat('MMM. d, y', Localizations.localeOf(context).languageCode);
    return formatter.format(this);
  }
}
