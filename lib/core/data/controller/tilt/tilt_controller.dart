import 'dart:async';
import 'package:tweetguess/core/domain/services/tilt_detection/tilt_detection_interface.dart';

class TiltController {
  final ITiltDetectionService _tiltService;
  final void Function() onTilt;
  StreamSubscription? _subscription;

  TiltController({
    required ITiltDetectionService tiltService,
    required this.onTilt,
  }) : _tiltService = tiltService;

  void initialize() {
    _subscription = _tiltService.onTilt.listen((tilt) {
      if (tilt) {
        onTilt();
      }
    });

    _tiltService.startListening();
  }

  void pause() {
    _tiltService.stopListening();
  }

  void resume() {
    _tiltService.startListening();
  }

  void dispose() {
    _subscription?.cancel();
    _tiltService.dispose();
  }
}
