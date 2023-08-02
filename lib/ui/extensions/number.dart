extension ScoreNumber on num {
  int toScore() {
    return clamp(0, double.infinity).toInt();
  }
}
