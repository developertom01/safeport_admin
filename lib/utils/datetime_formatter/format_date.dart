import 'package:date_time_format/date_time_format.dart';

String formatDateTime(DateTime dateTime) {
  return DateTimeFormat.format(dateTime, format: DateTimeFormats.europeanAbbr);
}
