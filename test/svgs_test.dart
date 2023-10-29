import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:meokq_boss/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.accountOffIcon).existsSync(), isTrue);
    expect(File(Svgs.accountOnIcon).existsSync(), isTrue);
    expect(File(Svgs.cameraIcon).existsSync(), isTrue);
    expect(File(Svgs.challengeOffIcon).existsSync(), isTrue);
    expect(File(Svgs.challengeOnIcon).existsSync(), isTrue);
    expect(File(Svgs.checkIcon).existsSync(), isTrue);
    expect(File(Svgs.pencilIcon).existsSync(), isTrue);
    expect(File(Svgs.plusIcon).existsSync(), isTrue);
    expect(File(Svgs.questOffIcon).existsSync(), isTrue);
    expect(File(Svgs.questOnIcon).existsSync(), isTrue);
    expect(File(Svgs.rightArrowIcon).existsSync(), isTrue);
    expect(File(Svgs.settingIcon).existsSync(), isTrue);
    expect(File(Svgs.smileIcon).existsSync(), isTrue);
    expect(File(Svgs.smileIconWithBg).existsSync(), isTrue);
    expect(File(Svgs.statisticsOffIcon).existsSync(), isTrue);
    expect(File(Svgs.statisticsOnIcon).existsSync(), isTrue);
  });
}
