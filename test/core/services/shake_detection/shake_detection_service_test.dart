import 'dart:async';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:test/test.dart';
import 'package:tweetguess/core/services/shake_detection/shake_detection_service.dart';

// Generate mocks
@GenerateNiceMocks([MockSpec<AccelerometerEvent>()])
import 'shake_detection_service_test.mocks.dart';

class MockAccelerometerStream extends Stream<AccelerometerEvent> {
  final StreamController<AccelerometerEvent> _controller = 
      StreamController<AccelerometerEvent>();

  void emitEvent(AccelerometerEvent event) {
    _controller.add(event);
  }

  @override
  StreamSubscription<AccelerometerEvent> listen(
    void Function(AccelerometerEvent event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _controller.stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}

void main() {
  late ShakeDetectionService service;
  late MockAccelerometerStream mockAccelerometerStream;

  setUp(() {
    mockAccelerometerStream = MockAccelerometerStream();
    service = ShakeDetectionService(
      threshold: 2.0,
      accelerometerStream: () => mockAccelerometerStream,
    );
  });

  tearDown(() {
    service.dispose();
  });

  group('ShakeDetectionService', () {
    test('should emit true when acceleration exceeds threshold', () async {
      // Arrange
      final mockEvent = MockAccelerometerEvent();

      // should result in ~3.1g 💥
      when(mockEvent.x).thenReturn(10.0);
      when(mockEvent.y).thenReturn(10.0);
      when(mockEvent.z).thenReturn(10.0);

      // Act
      service.startListening();
      mockAccelerometerStream.emitEvent(mockEvent);

      // Assert
      await expectLater(
        service.onShake.timeout(
          const Duration(seconds: 1),
          onTimeout: (sink) => sink.close(),
        ),
        emits(true),
      );
    });

    test('should not emit when acceleration is below threshold', () async {
      // Arrange
      final mockEvent = MockAccelerometerEvent();
      when(mockEvent.x).thenReturn(0.5);
      when(mockEvent.y).thenReturn(0.5);
      when(mockEvent.z).thenReturn(0.5);

      // Act
      service.startListening();
      mockAccelerometerStream.emitEvent(mockEvent);

      // Assert
      await expectLater(
        service.onShake.timeout(
          const Duration(seconds: 1),
          onTimeout: (sink) => sink.close(),
        ),
        emitsDone,
      );
    });

    test('should not emit events when not listening', () async {
      // Arrange
      final mockEvent = MockAccelerometerEvent();
      when(mockEvent.x).thenReturn(3.0);
      when(mockEvent.y).thenReturn(3.0);
      when(mockEvent.z).thenReturn(3.0);

      // Act
      mockAccelerometerStream.emitEvent(mockEvent);

      // Assert
      await expectLater(
        service.onShake.timeout(
          const Duration(seconds: 1),
          onTimeout: (sink) => sink.close(),
        ),
        emitsDone,
      );
    });
  });
} 