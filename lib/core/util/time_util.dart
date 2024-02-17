import 'package:intl/intl.dart';

String toEnglishDay(String day) => switch (day) {
      '월' => 'MON',
      '화' => 'TUE',
      '수' => 'WED',
      '목' => 'THU',
      '금' => 'FRI',
      '토' => 'SAT',
      '일' => 'SUN',
      _ => ''
    };

String toKoreanDay(String day) => switch (day) {
      'MON' => '월',
      'TUE' => '화',
      'WED' => '수',
      'THU' => '목',
      'FRI' => '금',
      'SAT' => '토',
      'SUN' => '일',
      _ => ''
    };

String dateToKor(String date) {
  DateTime time = DateFormat('HH:mm').parse(date);

  String stringTime = DateFormat('HH:mm').format(time);
  DateTime newTime = time.subtract(const Duration(hours: 12));
  String before12Time = DateFormat('HH:mm').format(newTime);

  return time.hour < 12 ? '오전 $stringTime' : '오후 $before12Time';
}

String korToDate(String date) {
  DateTime time = DateFormat('HH:mm').parse(date.split(' ').last);

  String stringTime = DateFormat('HH:mm').format(time);
  time = time.add(const Duration(hours: 12));
  String after12Time = DateFormat('HH:mm').format(time);

  return time.hour < 12 ? stringTime : after12Time;
}
