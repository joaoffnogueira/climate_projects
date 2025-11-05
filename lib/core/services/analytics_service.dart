import 'package:firebase_analytics/firebase_analytics.dart';

/// Lightweight wrapper around FirebaseAnalytics to centralize calls and
/// make analytics easier to mock in tests.
class AnalyticsService {
  FirebaseAnalytics get _analytics => FirebaseAnalytics.instance;

  Future<void> logEvent(String name, {Map<String, Object?>? parameters}) async {
    // FirebaseAnalytics expects Map<String, Object>?; cast safely.
    await _analytics.logEvent(
        name: name, parameters: parameters?.cast<String, Object>());
  }

  // Add other helper methods as needed (setUserId, setProperty, etc.)
}
