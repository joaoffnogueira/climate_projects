import '../entities/suggestion.dart';
import '../repositories/suggestion_repository.dart';

class GetSuggestionsUseCase {
  final SuggestionRepository repository;
  GetSuggestionsUseCase(this.repository);

  List<Suggestion> execute() {
    return repository.getSuggestions();
  }
}
