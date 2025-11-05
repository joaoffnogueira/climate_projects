import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// A small wrapper for Crashlytics. Centralizes crash reporting and makes it
/// easier to mock or replace in tests.
class CrashlyticsService {
  FirebaseCrashlytics get _crashlytics => FirebaseCrashlytics.instance;

  void recordFlutterFatalError(FlutterErrorDetails details) {
    _crashlytics.recordFlutterFatalError(details);
  }

  void recordError(Object? error, StackTrace? stack, {bool fatal = false}) {
    _crashlytics.recordError(error, stack, fatal: fatal);
  }
}
