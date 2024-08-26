import 'package:appea/features/form/data/models/options_model.dart';
import 'package:appea/features/form/data/models/question_type_enum.dart';

class QuestionModel {
  final int id;
  final String question;
  final QuestionTypeEnum type;
  final List<OptionsModel>? options;
  final int? Function(dynamic)? nextQuestion;

  QuestionModel({
    required this.id,
    required this.question,
    required this.type,
    this.options,
    this.nextQuestion,
  });
}
