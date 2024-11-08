/// Service interface for detecting device tilt events.
/// 
/// Provides methods to start/stop tilt detection and a stream of tilt state changes.
abstract class ITiltDetectionService {
  /// Stream that emits true when device is tilted, false otherwise
  Stream<bool> get onTilt;

  /// Starts listening for tilt events
  void startListening();

  /// Stops listening for tilt events 
  void stopListening();

  /// Cleans up resources used by the service
  void dispose();
}
