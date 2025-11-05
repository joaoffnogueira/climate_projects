import '../entities/form.dart';
import '../entities/suggestion.dart';
import '../entities/history.dart';

abstract class FormRepository {
  Future<void> saveForm(FormEntity form);

  Future<void> saveSuggestion(SuggestionEntity suggestion);

  Future<void> saveHistory(HistoryEntity history);
}
