import 'dart:math';

import 'package:flutter/cupertino.dart';

late Color bgColor;
late Color element2Color;

List<Color> generateAvatarColors(String name, [List<Color>? colors]) {
  colors = [
    const Color(0xff00325b),
    const Color(0xff54a9ec),
    const Color(0xffD0E3EA),
    const Color(0xffFCF7E7),
    const Color(0xffC24C32)
  ];

  final numFromName = getNumber(name);
  final range = colors.length;
  bgColor = getRandomColor(numFromName + 1, colors, range);
  element2Color = getRandomColor(numFromName + 2, colors, range);

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
