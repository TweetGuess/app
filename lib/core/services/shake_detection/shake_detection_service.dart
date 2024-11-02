import 'dart:async';

import 'package:rxdart/transformers.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:tweetguess/core/services/shake_detection/shake_detection_interface.dart';
import 'package:tweetguess/modules/game/data/const.dart';

class ShakeDetectionService implements IShakeDetectionService {
  final double threshold;
  final StreamController<bool> _shakeController =
      StreamController<bool>.broadcast();
  StreamSubscription? _subscription;
  bool _isListening = false;

  ShakeDetectionService({this.threshold = GameConstants.SHAKE_THRESHOLD});

  @override
  Stream<bool> get onShake => _shakeController.stream;

  @override
  void startListening() {
    if (_isListening) return;
    _isListening = true;

    _subscription = accelerometerEventStream()
        .throttleTime(const Duration(milliseconds: 500))
        .listen(_handleAccelerometerEvent);
  }

  void _handleAccelerometerEvent(AccelerometerEvent event) {
    double acceleration = _computeAcceleration(event);
    if (acceleration > threshold) {
      _shakeController.add(true);
    }
  }

  double _computeAcceleration(AccelerometerEvent event) {
    // Calculate total acceleration magnitude using Pythagorean theorem in 3D
    // Then normalize by dividing by gravity (9.81 m/s²)
    return (event.x * event.x + event.y * event.y + event.z * event.z) /
        (9.81 * 9.81);
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
