import 'dart:async';

class RetryPolicy {
  final int maxAttempts;
  final Duration initialDelay;
  final double multiplier;
  final Duration maxDelay;
  final Duration perAttemptTimeout;

  const RetryPolicy({
    this.maxAttempts = 3,
    this.initialDelay = const Duration(milliseconds: 300),
    this.multiplier = 2,
    this.maxDelay = const Duration(seconds: 5),
    this.perAttemptTimeout = const Duration(seconds: 5),
  });

  Future<T> run<T>(Future<T> Function() operation) async {
    Object? lastError;
    var delay = initialDelay;
    for (var attempt = 1; attempt <= maxAttempts; attempt++) {
      try {
        return await operation().timeout(perAttemptTimeout);
      } catch (e) {
        lastError = e;
        if (attempt == maxAttempts) break;
        await Future<void>.delayed(delay);
        final next = delay * multiplier;
        delay = next > maxDelay ? maxDelay : next;
      }
    }
    throw lastError ?? StateError('Retry exhausted with no recorded error');
  }
}
