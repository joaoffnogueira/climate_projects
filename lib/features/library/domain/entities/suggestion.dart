import '../../data/models/suggestion_category_enum.dart';
import '../../data/models/suggestion_lang_enum.dart';
import '../../data/models/suggestion_type_enum.dart';

class Suggestion {
  final String title;
  final String subtitle;
  final String url;
  final SuggestionTypeEnum type;
  final SuggestionLangEnum lang;
  final List<SuggestionCategoryEnum> category;

  Suggestion({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.type,
    required this.lang,
    required this.category,
  });
}
