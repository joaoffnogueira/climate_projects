import '../repositories/form_repository.dart';
import '../entities/suggestion.dart';

class SaveSuggestionUseCase {
  final FormRepository repository;

  SaveSuggestionUseCase(this.repository);

  Future<void> execute(SuggestionEntity suggestion) async {
    try {
      await repository.saveSuggestion(suggestion);
    } catch (e) {
      rethrow;
    }
  }
}
