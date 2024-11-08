import 'dart:async';

import 'package:rxdart/transformers.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:tweetguess/core/domain/services/shake_detection/shake_detection_interface.dart';
import 'package:tweetguess/modules/game/data/const.dart';

/// A service that detects device shake gestures using accelerometer data.
///
/// The service monitors the device's accelerometer and detects shake gestures when
/// the total acceleration magnitude exceeds a configurable threshold.
class ShakeDetectionService implements IShakeDetectionService {
  /// The acceleration threshold that must be exceeded to register as a shake.
  /// Acceleration is normalized relative to gravity (9.81 m/s²).
  final double threshold;

  static const double GRAVITY = 9.81;
  static const int THROTTLE_MS = 500;

  final StreamController<bool> _shakeController =
      StreamController<bool>.broadcast();
  StreamSubscription? _subscription;
  bool _isListening = false;

  final Stream<AccelerometerEvent> Function() _accelerometerStream;

  /// Creates a shake detection service with the specified threshold.
  ///
  /// [threshold] defaults to [GameConstants.SHAKE_THRESHOLD] if not provided.
  ShakeDetectionService({ 
    this.threshold = GameConstants.SHAKE_THRESHOLD,
    Stream<AccelerometerEvent> Function()? accelerometerStream,
  }) : _accelerometerStream = accelerometerStream ?? accelerometerEventStream;

  @override
  Stream<bool> get onShake => _shakeController.stream;

  @override
  void startListening() {
    if (_isListening) return;
    _isListening = true;

    // Use injected stream factory
    _subscription = _accelerometerStream()
        .throttleTime(const Duration(milliseconds: THROTTLE_MS))
        .listen(_handleAccelerometerEvent);
  }

  /// Processes accelerometer events to detect shakes.
  ///
  /// Emits true through [onShake] when acceleration exceeds [threshold].
  void _handleAccelerometerEvent(AccelerometerEvent event) {
    double acceleration = _computeAcceleration(event);
    if (acceleration > threshold) {
      _shakeController.add(true);
    }
  }

  /// Computes the total acceleration magnitude from accelerometer data.
  ///
  /// Uses the Pythagorean theorem in 3D to calculate magnitude, then
  /// normalizes by dividing by gravity (9.81 m/s²).
  double _computeAcceleration(AccelerometerEvent event) {
    final double squaredSum =
        event.x * event.x + event.y * event.y + event.z * event.z;
    return squaredSum / (GRAVITY * GRAVITY);
  }

  @override
  void stopListening() {
    _isListening = false;
    _subscription?.pause();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _shakeController.close();
  }
}
