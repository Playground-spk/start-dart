//ลองประกาศ ตัวแปร ให้ครบ

import 'dart:io';

void main() {
  var one = ' can only use same type';
  String two = 'define varrible can edit only string';
  int three = 3;
  double four = 3.33;
  dynamic five = 'can edit to any thing';

  if (one.runtimeType == String) {
    print(one);
  }

  const STANDARD = 5;

  stdout.writeln('hello please tell me your name');

  String name  = stdout.
}
