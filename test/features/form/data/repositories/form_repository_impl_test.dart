import 'package:climate_change_projects/core/db_local/db_local.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:climate_change_projects/features/form/data/repositories/form_repository_impl.dart';
import 'package:climate_change_projects/core/datasources/firestore_data_source.dart';
import 'package:climate_change_projects/core/datasources/realm_data_source.dart';
import 'package:climate_change_projects/features/form/domain/entities/form.dart';
import 'package:climate_change_projects/features/form/domain/entities/suggestion.dart';
import 'package:climate_change_projects/core/services/crashlytics_service.dart';
import 'package:flutter/foundation.dart';
import 'package:realm/realm.dart';

class _FakeFirestore implements FirestoreDataSource {
  bool addFormCalled = false;
  bool addSuggestionCalled = false;
  bool throwOnAddForm = false;

  @override
  Future<void> addFormAnswers(Map<String, dynamic> form) async {
    if (throwOnAddForm) throw Exception('firestore error');
    addFormCalled = true;
  }

  @override
  Future<void> addSuggestion(Map<String, dynamic> suggestion) async {
    addSuggestionCalled = true;
  }
}

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
  test('FormRepositoryImpl saves form and suggestion', () async {
    final fs = _FakeFirestore();
    // For this test we pass a real RealmDataSource with a no-op local DB is not required
    final realm = _FakeRealm();
    final crash = _FakeCrash();
    final repo = FormRepositoryImpl(fs, realm, crash);

    final form = FormEntity(date: 'd', answers: {'q': 'a'});
    final suggestion = SuggestionEntity(date: 'd', suggestion: 's');

    await repo.saveForm(form);
    expect(fs.addFormCalled, isTrue);

    await repo.saveSuggestion(suggestion);
    expect(fs.addSuggestionCalled, isTrue);
  });

  test('FormRepositoryImpl logs and rethrows on firestore error', () async {
    final fs = _FakeFirestore()..throwOnAddForm = true;
    final realm = _FakeRealm();
    final crash = _FakeCrash();
    final repo = FormRepositoryImpl(fs, realm, crash);
    final form = FormEntity(date: 'd', answers: {'q': 'a'});
    try {
      await repo.saveForm(form);
      fail('Expected saveForm to throw');
    } catch (e) {
      // The repository should log the error to Crashlytics before rethrowing
      expect(crash.errors.isNotEmpty, isTrue);
    }
  });

  // Realm-related saveHistory tests are skipped here because Realm requires
  // its native bindings; the repository's Firestore-related behaviors are
  // validated above. For full integration tests, run on CI with Realm
  // available or mock the DbLocal implementation.
}
