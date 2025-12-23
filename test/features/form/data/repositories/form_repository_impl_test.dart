import 'package:climate_change_projects/core/db_local/db_local.dart';
import 'package:climate_change_projects/core/datasources/realm_data_source.dart';
import 'package:climate_change_projects/core/services/crashlytics_service.dart';
import 'package:flutter/foundation.dart';
import 'package:realm/realm.dart';

class _FakeDbLocal implements DbLocal {
  @override
  T add<T extends RealmObject>(T object) {
    // no-op
    throw UnimplementedError();
  }

  @override
  void addAll<T extends RealmObject>(Iterable<T> items, {bool update = false}) {
    throw UnimplementedError();
  }

  @override
  List<T> all<T extends RealmObject>() {
    throw UnimplementedError();
  }

  @override
  void close() {}

  @override
  T? find<T extends RealmObject>(Object primaryKey) {
    throw UnimplementedError();
  }

  @override
  void openConection() {}

  @override
  List<T> query<T extends RealmObject>(String query,
      [List<Object?> args = const []]) {
    throw UnimplementedError();
  }

  @override
  void remove<T extends RealmObject>(T object) {}
}

class _FakeRealm extends RealmDataSource {
  bool saveCalled = false;
  bool throwOnSave = false;

  _FakeRealm() : super(_FakeDbLocal());

  @override
  void saveHistory(
      {required String title,
      required String keywords,
      required String recommendedKeywords,
      required Map<String, String> answers}) {
    if (throwOnSave) throw Exception('realm error');
    saveCalled = true;
  }
}

class _FakeCrash implements CrashlyticsService {
  final List<Object> errors = [];

  @override
  void recordError(Object? error, StackTrace? stack, {bool fatal = false}) {
    errors.add(error ?? 'null');
  }

  @override
  void recordFlutterFatalError(FlutterErrorDetails details) {
    errors.add(details.exception);
  }
}

void main() {

}
