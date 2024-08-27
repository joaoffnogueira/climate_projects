import '../../../../models/suggestion_model.dart';

class OptionsModel {
  final int id;
  final String option;
  final int? tipId;
  final List<SuggestionModel>? suggestions;
  final List<String>? keywords;

  OptionsModel({
    required this.id,
    required this.option,
    this.tipId,
    this.suggestions,
    this.keywords,
  });
}
