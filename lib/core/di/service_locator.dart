import 'package:get_it/get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:realm/realm.dart';

import 'package:climate_change_projects/features/library/data/datasources/suggestion_data_source.dart';
import 'package:climate_change_projects/features/library/data/repositories/suggestion_repository_impl.dart';
import 'package:climate_change_projects/features/library/domain/repositories/suggestion_repository.dart';
import 'package:climate_change_projects/features/library/domain/usecases/get_suggestions_usecase.dart';
import 'package:climate_change_projects/core/datasources/realm_data_source.dart';
import 'package:climate_change_projects/features/form/domain/repositories/form_repository.dart';
import 'package:climate_change_projects/features/form/data/repositories/form_repository_impl.dart';
import 'package:climate_change_projects/features/form/domain/usecases/save_history_usecase.dart';
import 'package:climate_change_projects/core/db_local/db_local_realm.dart';
import 'package:climate_change_projects/core/db_local/db_local.dart';
import 'package:climate_change_projects/features/form/data/models/history_model.dart';
import 'package:climate_change_projects/core/services/analytics_service.dart';
import 'package:climate_change_projects/core/services/crashlytics_service.dart';
import 'package:climate_change_projects/core/services/navigation_service.dart';
import 'package:climate_change_projects/helpers/theme_helper.dart';

final GetIt getIt = GetIt.instance;

class ServiceLocator {

  static Future<void> init() async {

    getIt.registerLazySingleton<SuggestionDataSource>(
        () => SuggestionDataSource());

    getIt.registerLazySingleton<ThemeHelper>(() => ThemeHelper());

    getIt.registerLazySingleton<AnalyticsService>(() => AnalyticsService());
    getIt.registerLazySingleton<CrashlyticsService>(() => CrashlyticsService());
    getIt.registerLazySingleton<NavigationService>(() => NavigationService());

    getIt.registerLazySingleton<DbLocal>(
        () => DbLocalRealm([HistoryModel.schema]));
    getIt
        .registerLazySingleton<RealmDataSource>(() => RealmDataSource(getIt()));

    getIt.registerLazySingleton<FormRepository>(
        () => FormRepositoryImpl(getIt(), getIt()));

    getIt.registerLazySingleton<SaveHistoryUseCase>(
        () => SaveHistoryUseCase(getIt()));

    getIt.registerLazySingleton<SuggestionRepository>(
        () => SuggestionRepositoryImpl(getIt()));

    getIt.registerLazySingleton<GetSuggestionsUseCase>(
        () => GetSuggestionsUseCase(getIt()));
  }

  /// A test-friendly initializer that registers lightweight fakes for
  /// platform-backed services (Firestore, Realm, Crashlytics) so unit and
  /// widget tests can run without native bindings.
  static Future<void> initTest({
    RealmDataSource? realmOverride,
    CrashlyticsService? crashlyticsOverride,
    AnalyticsService? analyticsOverride,
    ThemeHelper? themeOverride,
  }) async {
    if (getIt.isRegistered<RealmDataSource>()) {
      getIt.unregister<RealmDataSource>();
    }
    if (getIt.isRegistered<DbLocal>()) getIt.unregister<DbLocal>();
    if (getIt.isRegistered<CrashlyticsService>()) {
      getIt.unregister<CrashlyticsService>();
    }
    if (getIt.isRegistered<AnalyticsService>()) {
      getIt.unregister<AnalyticsService>();
    }
    if (getIt.isRegistered<ThemeHelper>()) getIt.unregister<ThemeHelper>();
    if (getIt.isRegistered<NavigationService>()) {
      getIt.unregister<NavigationService>();
    }
    if (getIt.isRegistered<FormRepository>()) {
      getIt.unregister<FormRepository>();
    }
    if (getIt.isRegistered<SaveHistoryUseCase>()) {
      getIt.unregister<SaveHistoryUseCase>();
    }
    if (getIt.isRegistered<SuggestionRepository>()) {
      getIt.unregister<SuggestionRepository>();
    }
    if (getIt.isRegistered<GetSuggestionsUseCase>()) {
      getIt.unregister<GetSuggestionsUseCase>();
    }

    getIt.registerLazySingleton<ThemeHelper>(
        () => themeOverride ?? ThemeHelper());
    getIt.registerLazySingleton<AnalyticsService>(
        () => analyticsOverride ?? AnalyticsService());
    getIt.registerLazySingleton<CrashlyticsService>(
        () => crashlyticsOverride ?? _FakeCrash());
    getIt.registerLazySingleton<NavigationService>(() => NavigationService());

    getIt.registerLazySingleton<DbLocal>(() => _FakeDbLocal());
    getIt.registerLazySingleton<RealmDataSource>(
        () => realmOverride ?? _FakeRealm(getIt()));

    getIt.registerLazySingleton<FormRepository>(
        () => FormRepositoryImpl(getIt(), getIt()));

    getIt.registerLazySingleton<SaveHistoryUseCase>(
        () => SaveHistoryUseCase(getIt()));

    getIt.registerLazySingleton<SuggestionRepository>(
        () => SuggestionRepositoryImpl(getIt()));
    getIt.registerLazySingleton<GetSuggestionsUseCase>(
        () => GetSuggestionsUseCase(getIt()));
  }
}

class _FakeDbLocal implements DbLocal {
  @override
  T add<T extends RealmObject>(T object) {
    return object;
  }

  @override
  void addAll<T extends RealmObject>(Iterable<T> items,
      {bool update = false}) {}

  @override
  List<T> all<T extends RealmObject>() {
    return <T>[];
  }

  @override
  void close() {}

  @override
  T? find<T extends RealmObject>(Object primaryKey) {
    return null;
  }

  @override
  void openConection() {}

  @override
  List<T> query<T extends RealmObject>(String query,
      [List<Object?> args = const []]) {
    return <T>[];
  }

  @override
  void remove<T extends RealmObject>(T object) {}
}

class _FakeRealm extends RealmDataSource {
  _FakeRealm(super.db);

  @override
  void saveHistory(
      {required String title,
      required String keywords,
      required String recommendedKeywords,
      required Map<String, String> answers}) {
  }
}

class _FakeCrash implements CrashlyticsService {
  final List<Object?> errors = [];

  @override
  void recordError(Object? error, StackTrace? stack, {bool fatal = false}) {
    errors.add(error ?? 'null');
  }

  @override
  void recordFlutterFatalError(FlutterErrorDetails details) {
    errors.add(details.exception);
  }
}
