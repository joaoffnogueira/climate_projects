class AnswerModel {
  final int questionId;
  String questionText;
  final List<int> answers;
  final List<String> answerTexts;
  final List<String> keywords;
  AnswerModel({
    required this.questionId,
    required this.questionText,
    required this.answers,
    required this.answerTexts,
    required this.keywords,
  });

  AnswerModel copyWith({
    int? questionId,
    String? questionText,
    List<int>? answers,
    List<String>? answerTexts,
    List<String>? keywords,
  }) {
    return AnswerModel(
      questionId: questionId ?? this.questionId,
      questionText: questionText ?? this.questionText,
      answers: answers ?? this.answers,
      answerTexts: answerTexts ?? this.answerTexts,
      keywords: keywords ?? this.keywords,
    );
  }

}
