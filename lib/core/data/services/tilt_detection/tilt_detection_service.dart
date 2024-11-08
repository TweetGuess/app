import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:tweetguess/core/data/services/tilt_detection/checkpoints/checkpoint.dart';

import '../../../domain/services/tilt_detection/tilt_detection_interface.dart';

/// A service that detects tilt gestures based on accelerometer data.
///
/// Uses a sequence of checkpoints to detect a specific tilt pattern:
/// 1. Tilt right beyond threshold
/// 2. Return to neutral position
/// 3. Tilt right again
///
/// Each checkpoint must be reached within its specified time limit.
/// Emits a [bool] through [onTilt] when the full pattern is completed.
class TiltDetectionService implements ITiltDetectionService {
  final StreamController<bool> _tiltController =
      StreamController<bool>.broadcast();
  StreamSubscription? _subscription;
  bool _isListening = false;

  // Define checkpoints with thresholds and time limits
  final List<Checkpoint> _checkpoints = [
    Checkpoint(threshold: -5, direction: 'right', maxDuration: 500),
    Checkpoint(threshold: -2, direction: 'neutral', maxDuration: 500),
    Checkpoint(threshold: -5, direction: 'right', maxDuration: 500),
  ];

  int _currentCheckpointIndex = 0;
  DateTime? _lastCheckpointTime;

  final Stream<AccelerometerEvent> Function() _accelerometerStream;

  TiltDetectionService({
    Stream<AccelerometerEvent> Function()? accelerometerStream,
  }) : _accelerometerStream = accelerometerStream ?? accelerometerEventStream;

  @override
  Stream<bool> get onTilt => _tiltController.stream;

  @override
  void startListening() {
    if (_isListening) return;
    _isListening = true;

    _subscription = _accelerometerStream()
        .throttleTime(const Duration(milliseconds: 50))
        .listen(_handleAccelerometerEvent);
  }

  void _handleAccelerometerEvent(AccelerometerEvent event) {
    final now = DateTime.now();
    final currentCheckpoint = _checkpoints[_currentCheckpointIndex];

   if (_isTimeExceeded(now)) {
      _reset();
    } else if (_isCheckpointReached(event, currentCheckpoint)) {
      _advanceCheckpoint(now);
    }
  }

  bool _isCheckpointReached(AccelerometerEvent event, Checkpoint checkpoint) {
    switch (checkpoint.direction) {
      case 'right':
        return event.x < checkpoint.threshold;
      case 'neutral':
        return event.x > checkpoint.threshold;
      default:
        return false;
    }
  }

  void _advanceCheckpoint(DateTime now) {
    _currentCheckpointIndex++;
    _lastCheckpointTime = now;

    if (_currentCheckpointIndex >= _checkpoints.length) {
      _tiltController.add(true);
      _reset();
    }
  }

  bool _isTimeExceeded(DateTime now) {
    return _lastCheckpointTime != null &&
        now.difference(_lastCheckpointTime!).inMilliseconds >
            _checkpoints[_currentCheckpointIndex].maxDuration;
  }

  void _reset() {
    _currentCheckpointIndex = 0;
    _lastCheckpointTime = null;
  }

  @override
  void stopListening() {
    _isListening = false;
    _subscription?.pause();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _tiltController.close();
  }
}
