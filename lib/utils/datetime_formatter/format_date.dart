import 'package:date_time_format/date_time_format.dart';

String formatDateTime(DateTime? dateTime) {
  if (dateTime != null)
    return DateTimeFormat.format(dateTime,
        format: DateTimeFormats.europeanAbbr);
  else
    return "";
}
