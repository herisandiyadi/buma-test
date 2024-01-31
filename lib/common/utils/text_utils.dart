import 'package:intl/intl.dart';

class TextUtils {
  String dateFormatId(DateTime? inputDate) {
    if (inputDate == null) {
      return '';
    }

    final String date = DateFormat('dd MMMM yyyy').format(inputDate);
    return date;
  }

  String countDay(DateTime startDate, DateTime endDate) {
    int differenceInDays = endDate.difference(startDate).inDays + 1;
    return differenceInDays.toString();
  }
}
