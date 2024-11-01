abstract class IShakeDetectionService {
  Stream<void> get onShake;
  void startListening();
  void stopListening();
  void dispose();
}
