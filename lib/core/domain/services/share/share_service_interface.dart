/// Interface for sharing content across platforms.
/// Implementations should handle platform-specific sharing mechanisms.
abstract class IShareService {
  Future<void> share({
    required String text,
    String? subject,
  });
}
