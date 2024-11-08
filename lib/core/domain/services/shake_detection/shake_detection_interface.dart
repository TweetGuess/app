/// Service interface for detecting device shake events
abstract class IShakeDetectionService {
  /// Stream that emits true when a shake is detected
  Stream<bool> get onShake;

  /// Start listening for shake events
  void startListening();

  /// Stop listening for shake events 
  void stopListening();

  /// Clean up resources used by the service
  void dispose();
}
