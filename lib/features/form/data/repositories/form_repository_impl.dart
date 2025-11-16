import 'package:climate_change_projects/core/datasources/firestore_data_source.dart';
import 'package:climate_change_projects/core/datasources/realm_data_source.dart';
import 'package:climate_change_projects/features/form/domain/repositories/form_repository.dart';
import 'package:climate_change_projects/features/form/domain/entities/form.dart';
import 'package:climate_change_projects/features/form/domain/entities/suggestion.dart';
import 'package:climate_change_projects/features/form/domain/entities/history.dart';
import 'package:climate_change_projects/core/services/crashlytics_service.dart';

class FormRepositoryImpl implements FormRepository {
  final FirestoreDataSource firestore;
  final RealmDataSource realm;
  final CrashlyticsService crashlytics;

  FormRepositoryImpl(this.firestore, this.realm, this.crashlytics);

  @override
  Future<void> saveForm(FormEntity form) async {
    try {
      await firestore.addFormAnswers(form.toMap());
    } catch (e, s) {
      crashlytics.recordError(e, s, fatal: false);
      rethrow;
    }
  }

  @override
  Future<void> saveSuggestion(SuggestionEntity suggestion) async {
    try {
      await firestore.addSuggestion(suggestion.toMap());
    } catch (e, s) {
      crashlytics.recordError(e, s, fatal: false);
      rethrow;
    }
  }

  @override
  Future<void> saveHistory(HistoryEntity history) async {
    try {
      // Realm operations are synchronous in the existing DbLocal API; keep
      // the call in a sync block but return a completed Future for API
      // consistency.
      realm.saveHistory(
        title: history.title,
        keywords: history.keywords,
        recommendedKeywords: history.recommendedKeywords,
        answers: history.answers,
      );
      return Future.value();
    } catch (e, s) {
      crashlytics.recordError(e, s, fatal: false);
      rethrow;
    }
  }
}
