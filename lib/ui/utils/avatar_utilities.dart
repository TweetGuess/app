import 'dart:math';

import 'package:flutter/cupertino.dart';

late Color bgColor;
late Color element1Color;
late double element1TranslateX;
late double element1TranslateY;
late double element1Scale;
late double element1Rotate;
late Color element2Color;
late double element2TranslateX;
late double element2TranslateY;
late double element2Scale;

List<Color> generateAvatarColors(String name, [List<Color>? colors]) {
  colors = [
    const Color(0xff00325b),
    const Color(0xff54a9ec),
    const Color(0xffD0E3EA),
    const Color(0xffFCF7E7),
    const Color(0xffC24C32)
  ];

  const double boxSize = 80;
  final numFromName = getNumber(name);
  final range = colors.length;
  int i = 0;
  bgColor = getRandomColor(numFromName + i, colors, range);

  i = 1;
  element1Color = getRandomColor(numFromName + i, colors, range);
  element1TranslateX = getUnit(numFromName * (i + 1), boxSize ~/ 10, 1);
  element1TranslateY = getUnit(numFromName * (i + 1), boxSize ~/ 10, 2);
  element1Scale = 1.2 + getUnit(numFromName * (i + 1), boxSize ~/ 20) / 10;
  element1Rotate = getUnit(numFromName * (i + 1), 360, 1);

  i = 2;
  element2Color = getRandomColor(numFromName + i, colors, range);
  element2TranslateX = getUnit(numFromName * (i + 1), boxSize ~/ 10, 1);
  element2TranslateY = getUnit(numFromName * (i + 1), boxSize ~/ 10, 2);
  element2Scale = 1.2 + getUnit(numFromName * (i + 1), boxSize ~/ 20) / 10;

  return [bgColor, element2Color];
}

int getNumber(String name) {
  if (name.codeUnits.isEmpty) return 0;
  return name.codeUnits.reduce((a, b) => a + b);
}

T getRandomColor<T>(int number, List<T> colors, int range) {
  return colors[(number) % range];
}

int getModulus(int num, int max) => num % max;
int getDigit(int number, int ntn) => (number / pow(10, ntn) % 10).floor();
bool getBoolean(int number, int ntn) => getDigit(number, ntn) % 2 == 0;
double getAngle(double x, double y) => atan2(y, x) * 180 / pi;
double getUnit(int number, int range, [int index = 0]) {
  int value = number % range;
  if (index > 0 && (getDigit(number, index) % 2) == 0) {
    return (-value).toDouble();
  } else {
    return (value).toDouble();
  }
}

List<Alignment> getRandomAlignments() {
  int randomNumber = Random().nextInt(9);
  List<Alignment> pair;

  switch (randomNumber) {
    case 0:
      pair = [Alignment.centerLeft, Alignment.centerRight];
      break;
    case 1:
      pair = [Alignment.topLeft, Alignment.topRight];
      break;
    case 2:
      pair = [Alignment.bottomLeft, Alignment.bottomRight];
      break;
    case 3:
      pair = [Alignment.topLeft, Alignment.centerRight];
      break;
    case 4:
      pair = [Alignment.centerLeft, Alignment.bottomRight];
      break;
    case 5:
      pair = [Alignment.bottomLeft, Alignment.topRight];
      break;
    case 6:
      pair = [Alignment.bottomLeft, Alignment.centerRight];
      break;
    case 7:
      pair = [Alignment.centerLeft, Alignment.topRight];
      break;
    case 8:
      pair = [Alignment.topLeft, Alignment.bottomRight];
      break;
    default:
      pair = [Alignment.centerLeft, Alignment.centerRight];
  }

  int rndm = Random().nextInt(2);

  if (rndm == 0) {
    return pair.reversed.toList();
  }

  return pair;
}
