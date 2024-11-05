
/// A utility class that provides time-based throttling for streams
class StreamThrottler {
  /// Throttles a stream to emit at most one event per [duration]
  /// 
  /// Returns a transformer that can be used with Stream.transform()
  /// 
  /// Example:
  /// ```dart
  /// stream.where(StreamThrottler.throttleWith(Duration(seconds: 1)))
  /// ```
  static bool Function(T) throttleWith<T>(Duration duration) {
    DateTime? lastEventTime;
    
    return (_) {
      final now = DateTime.now();
      if (lastEventTime == null || 
          now.difference(lastEventTime!) > duration) {
        lastEventTime = now;
        return true;
      }
      return false;
    };
  }
} 