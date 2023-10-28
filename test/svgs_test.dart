import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:meokq_boss/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.plusIcon).existsSync(), isTrue);
    expect(File(Svgs.settingIcon).existsSync(), isTrue);
    expect(File(Svgs.smileIcon).existsSync(), isTrue);
    expect(File(Svgs.smileIconWithBg).existsSync(), isTrue);
  });
}
