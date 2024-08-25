import 'package:appea/models/suggestion_lang_enum.dart';
import 'package:appea/models/suggestion_type_enum.dart';

class SuggestionModel {
  final String title;
  final String subtitle;
  final String url;
  final SuggestionTypeEnum type;
  final SuggestionLangEnum lang;

  SuggestionModel({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.type,
    required this.lang,
  });
}