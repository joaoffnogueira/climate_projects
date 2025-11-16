import '../entities/suggestion.dart';

/// Repository interface for suggestions (domain-level).
/// Returns domain `Suggestion` entities.
abstract class SuggestionRepository {
  List<Suggestion> getSuggestions();
}
