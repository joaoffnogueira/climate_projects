import '../../../../models/suggestion_model.dart';

class OptionsModel {
  final int id;
  final String option;
  final String? optionTip;
  final List<SuggestionModel>? suggestions;
  final List<String>? keywords;

  OptionsModel({
    required this.id,
    required this.option,
    this.optionTip,
    this.suggestions,
    this.keywords,
  });
}
