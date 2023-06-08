import 'dart:math';

extension RandomElement<T> on List<T> {
  T randomElement() {
    final Random random = Random();
    final int randomIndex = random.nextInt(length);
    return this[randomIndex];
  }
}
