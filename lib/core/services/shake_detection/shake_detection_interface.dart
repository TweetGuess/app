abstract class IShakeDetectionService {
  Stream<bool> get onShake;
  void startListening();
  void stopListening();
  void dispose();
}
