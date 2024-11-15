import '../../../../helpers/base_store.dart';
import '../../data/models/suggestion_category_enum.dart';
import '../../data/models/suggestion_lang_enum.dart';
import '../../data/models/suggestion_type_enum.dart';
import 'library_state.dart';

class LibraryStore extends NotifyBaseStore<LibraryState> {
  LibraryStore(SuggestionCategoryEnum categoryFilter)
      : super(LibraryState.initial(categoryFilter));

  void filterSuggestions() {
    final filtered = state.databinding.suggestionsCategory.where((element) {
      final lang = state.langFilter == SuggestionLangEnum.all ||
          element.lang == state.langFilter;
      final type = state.typeFilter == SuggestionTypeEnum.all ||
          element.type == state.typeFilter;
      final text = state.searchController?.text ?? '';
      return lang &&
          type &&
          (element.title.toLowerCase().contains(text.toLowerCase()) ||
              element.subtitle.toLowerCase().contains(text.toLowerCase()));
    }).toList();
    setState(
      state.copyWith(
        databinding: state.databinding.copyWith(
          filteredSuggestions: filtered,
        ),
      ),
    );
  }

  void setLangFilter(SuggestionLangEnum lang) {
    final value = lang == state.langFilter;
    if (value) {
      setState(
        state.copyWith(
          langFilter: SuggestionLangEnum.all,
        ),
      );
    } else {
      setState(
        state.copyWith(
          langFilter: lang,
        ),
      );
    }
    filterSuggestions();
  }

  void setTypeFilter(SuggestionTypeEnum type) {
    if (type == state.typeFilter) {
      setState(
        state.copyWith(
          typeFilter: SuggestionTypeEnum.all,
        ),
      );
    } else {
      setState(
        state.copyWith(
          typeFilter: type,
        ),
      );
    }
    filterSuggestions();
  }

  void dispose() {
    state.dispose();
  }
}
