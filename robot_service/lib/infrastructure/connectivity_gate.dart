import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

/// Thin wrapper around `connectivity_plus` that emits a simple `bool` online/offline.
class ConnectivityGate {
  ConnectivityGate({Connectivity? connectivity})
      : _connectivity = connectivity ?? Connectivity();

  final Connectivity _connectivity;
  final _controller = StreamController<bool>.broadcast();
  StreamSubscription<List<ConnectivityResult>>? _sub;

  Stream<bool> get onlineStream => _controller.stream;

  Future<bool> isOnline() async {
    final results = await _connectivity.checkConnectivity();
    return _anyOnline(results);
  }

  void start() {
    _sub?.cancel();
    _sub = _connectivity.onConnectivityChanged.listen((results) {
      _controller.add(_anyOnline(results));
    });
  }

  bool _anyOnline(List<ConnectivityResult> results) =>
      results.any((r) => r != ConnectivityResult.none);

  Future<void> dispose() async {
    await _sub?.cancel();
    await _controller.close();
  }
}
