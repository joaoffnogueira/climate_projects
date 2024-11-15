import 'package:climate_change_projects/features/library/data/models/suggestion_category_enum.dart';
import 'package:climate_change_projects/features/library/presentation/stores/library_databinding.dart';
import 'package:flutter/material.dart';
import '../../../../helpers/base_state.dart';
import '../../data/models/suggestion_lang_enum.dart';
import '../../data/models/suggestion_type_enum.dart';

class LibraryState extends BaseState {
  final SuggestionCategoryEnum categoryFilter;
  final SuggestionLangEnum langFilter;
  final SuggestionTypeEnum typeFilter;
  final TextEditingController? searchController;
  final LibraryDatabinding databinding;
  LibraryState({
    required super.loading,
    required super.errorMessage,
    required this.categoryFilter,
    this.langFilter = SuggestionLangEnum.all,
    this.typeFilter = SuggestionTypeEnum.all,
    this.searchController,
    required this.databinding,
  });

  factory LibraryState.initial(SuggestionCategoryEnum categoryFilter) {
    return LibraryState(
      errorMessage: null,
      categoryFilter: categoryFilter,
      loading: BaseLoadingState.initial,
      langFilter: SuggestionLangEnum.all,
      typeFilter: SuggestionTypeEnum.all,
      searchController: TextEditingController(),
      databinding: LibraryDatabinding(categoryFilter: categoryFilter),
    );
  }

  LibraryState copyWith({
    BaseLoadingState? loading,
    String? errorMessage,
    SuggestionCategoryEnum? categoryFilter,
    SuggestionLangEnum? langFilter,
    SuggestionTypeEnum? typeFilter,
    TextEditingController? searchController,
    LibraryDatabinding? databinding,
  }) {
    return LibraryState(
      errorMessage: errorMessage ?? this.errorMessage,
      loading: loading ?? this.loading,
      categoryFilter: categoryFilter ?? this.categoryFilter,
      langFilter: langFilter ?? this.langFilter,
      typeFilter: typeFilter ?? this.typeFilter,
      searchController: searchController ?? this.searchController,
      databinding: databinding ?? this.databinding,
    );
  }

  void dispose() {
    searchController?.dispose();
  }
}
