import 'dart:async';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:test/test.dart';
import 'package:tweetguess/core/data/services/tilt_detection/tilt_detection_service.dart';

// Generate mocks
@GenerateNiceMocks([MockSpec<AccelerometerEvent>()])
import 'tilt_detection_service_test.mocks.dart';

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
  late TiltDetectionService service;
  late MockAccelerometerStream mockAccelerometerStream;

  setUp(() {
    mockAccelerometerStream = MockAccelerometerStream();
    service = TiltDetectionService(
      accelerometerStream: () => mockAccelerometerStream,
    );
  });

  tearDown(() {
    service.dispose();
  });

  group('TiltDetectionService', () {
    test('should complete tilt sequence when checkpoints are met in time',
        () async {
      // Arrange
      service.startListening();

      // Act - Simulate tilt right
      final rightTilt = MockAccelerometerEvent();
      when(rightTilt.x).thenReturn(-6.0); // Above threshold (5.0)
      mockAccelerometerStream.emitEvent(rightTilt);

      await Future.delayed(const Duration(milliseconds: 200));

      // Simulate return to neutral
      final neutral = MockAccelerometerEvent();
      when(neutral.x).thenReturn(-1.0); // Below threshold (2.0)
      mockAccelerometerStream.emitEvent(neutral);

      await Future.delayed(const Duration(milliseconds: 200));

      // Simulate second right tilt
      mockAccelerometerStream.emitEvent(rightTilt);

      // Assert
      expect(service.onTilt, emits(true));
    });

    test('should reset sequence when checkpoint timeout is exceeded', () async {
      // Arrange
      service.startListening();

      // Act - Simulate first tilt
      final rightTilt = MockAccelerometerEvent();
      when(rightTilt.x).thenReturn(-6.0);
      mockAccelerometerStream.emitEvent(rightTilt);

      // Wait longer than checkpoint timeout
      await Future.delayed(const Duration(milliseconds: 600));

      // Simulate remaining sequence
      final neutral = MockAccelerometerEvent();
      when(neutral.x).thenReturn(-1.0);
      mockAccelerometerStream.emitEvent(neutral);

      await Future.delayed(const Duration(milliseconds: 200));
      mockAccelerometerStream.emitEvent(rightTilt);
      
      // Assert
      await expectLater(
        service.onTilt.timeout(
          const Duration(seconds: 1),
          onTimeout: (sink) => sink.close(),
        ),
        emitsDone,
      );
    });

    test('should not emit when not listening', () async {
      // Arrange
      final rightTilt = MockAccelerometerEvent();
      when(rightTilt.x).thenReturn(-6.0);

      // Act - Don't call startListening()
      mockAccelerometerStream.emitEvent(rightTilt);

      // Assert
      await expectLater(
        service.onTilt.timeout(
          const Duration(seconds: 1),
          onTimeout: (sink) => sink.close(),
        ),
        emitsDone,
      );
    });

    test('should handle invalid checkpoint direction gracefully', () async {
      // Arrange
      service.startListening();

      // Act
      final invalidEvent = MockAccelerometerEvent();
      when(invalidEvent.x).thenReturn(0.0);
      mockAccelerometerStream.emitEvent(invalidEvent);

      // Assert
      await expectLater(
        service.onTilt.timeout(
          const Duration(seconds: 1),
          onTimeout: (sink) => sink.close(),
        ),
        emitsDone,
      );
    });
  });
}
