// lib/core/controllers/shake_controller.dart
import 'dart:async';

import 'package:tweetguess/core/services/shake_detection/shake_detection_interface.dart';

class ShakeController {
  final IShakeDetectionService _shakeService;
  final void Function() onShake;
  StreamSubscription? _subscription;

  ShakeController({
    required IShakeDetectionService shakeService,
    required this.onShake,
  }) : _shakeService = shakeService;

  void initialize() {
    _subscription = _shakeService.onShake.listen((_) => onShake());
    _shakeService.startListening();
  }

  void pause() {
    _shakeService.stopListening();
  }

  void resume() {
    _shakeService.startListening();
  }

  void dispose() {
    _subscription?.cancel();
    _shakeService.dispose();
  }
}
