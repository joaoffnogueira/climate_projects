import '../../data/models/suggestion_category_enum.dart';
import '../../domain/entities/suggestion.dart';
import 'package:climate_change_projects/core/di/service_locator.dart';
import '../../domain/usecases/get_suggestions_usecase.dart';

class LibraryDatabinding {
  final SuggestionCategoryEnum categoryFilter;
  LibraryDatabinding({
    required this.categoryFilter,
  }) {
    // obtain suggestions from the data layer via injected usecase
    final usecase = getIt<GetSuggestionsUseCase>();
    final result = usecase.execute();

    suggestions = result;

    suggestionsCategory = suggestions
        .where((element) => element.category.contains(categoryFilter))
        .toList()
      ..sort((a, b) => a.title.compareTo(b.title));

    filteredSuggestions = suggestionsCategory;
  }

  List<Suggestion> filteredSuggestions = [];
  List<Suggestion> suggestionsCategory = [];
  LibraryDatabinding copyWith({
    List<Suggestion>? filteredSuggestions,
    List<Suggestion>? suggestionsCategory,
  }) {
    final copy = LibraryDatabinding(categoryFilter: categoryFilter);
    copy.filteredSuggestions = filteredSuggestions ?? this.filteredSuggestions;
    copy.suggestionsCategory = suggestionsCategory ?? this.suggestionsCategory;
    return copy;
  }

  // suggestions are provided by the data layer via UseCase
  List<Suggestion> suggestions = [];
}
