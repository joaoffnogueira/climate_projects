import 'package:climate_change_projects/features/library/data/models/suggestion_category_enum.dart';
import 'suggestion_lang_enum.dart';
import 'suggestion_type_enum.dart';

class SuggestionModel {
  final String title;
  final String subtitle;
  final String url;
  final SuggestionTypeEnum type;
  final SuggestionLangEnum lang;
  final SuggestionCategoryEnum category;

  SuggestionModel({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.type,
    required this.lang,
    required this.category,
  });
}