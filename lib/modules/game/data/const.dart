class GameConstants {
  static const int TIME_PER_ROUND = 30;
  static const int MAX_LIVES = 5;
  static const int MINUS_POINTS = -15;
  static const int MAX_JOKERS = 2;
  
  // Absolute value of multiple of earth's gravity g (~9.81 m/s2) - results in slightly heavier shake
  static const double SHAKE_THRESHOLD = 2.7;

  // Specific event codes passed through the game
  static const int NO_TIME_LEFT_EVENT = -1;
}
