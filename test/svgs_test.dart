import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:meokq_boss/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.accountOffIcon).existsSync(), isTrue);
    expect(File(Svgs.accountOnIcon).existsSync(), isTrue);
    expect(File(Svgs.appleIcon).existsSync(), isTrue);
    expect(File(Svgs.arrowDown).existsSync(), isTrue);
    expect(File(Svgs.arrowUp).existsSync(), isTrue);
    expect(File(Svgs.cameraIcon).existsSync(), isTrue);
    expect(File(Svgs.challengeOffIcon).existsSync(), isTrue);
    expect(File(Svgs.challengeOnIcon).existsSync(), isTrue);
    expect(File(Svgs.checkIcon).existsSync(), isTrue);
    expect(File(Svgs.checkInIcon).existsSync(), isTrue);
    expect(File(Svgs.checkInWithCircleIcon).existsSync(), isTrue);
    expect(File(Svgs.checkOffWithCircleIcon).existsSync(), isTrue);
    expect(File(Svgs.checkOutIcon).existsSync(), isTrue);
    expect(File(Svgs.googleIcon).existsSync(), isTrue);
    expect(File(Svgs.kakaoIcon).existsSync(), isTrue);
    expect(File(Svgs.leftArrowIcon).existsSync(), isTrue);
    expect(File(Svgs.minusIcon).existsSync(), isTrue);
    expect(File(Svgs.pencilIcon).existsSync(), isTrue);
    expect(File(Svgs.plusIcon).existsSync(), isTrue);
    expect(File(Svgs.plusInCircleIcon).existsSync(), isTrue);
    expect(File(Svgs.questAddButton).existsSync(), isTrue);
    expect(File(Svgs.questOffIcon).existsSync(), isTrue);
    expect(File(Svgs.questOnIcon).existsSync(), isTrue);
    expect(File(Svgs.questionMarkIcon).existsSync(), isTrue);
    expect(File(Svgs.rightArrowIcon).existsSync(), isTrue);
    expect(File(Svgs.settingIcon).existsSync(), isTrue);
    expect(File(Svgs.smileIcon).existsSync(), isTrue);
    expect(File(Svgs.smileIconWithBg).existsSync(), isTrue);
    expect(File(Svgs.statisticsOffIcon).existsSync(), isTrue);
    expect(File(Svgs.statisticsOnIcon).existsSync(), isTrue);
  });
}
