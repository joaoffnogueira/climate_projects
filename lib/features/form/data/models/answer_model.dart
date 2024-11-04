class AnswerModel {
  final int questionId;
  final List<int> answers;
  final List<String> keywords;
  AnswerModel({
    required this.questionId,
    required this.answers,
    required this.keywords,
  });

  AnswerModel copyWith({
    int? questionId,
    List<int>? answers,
    List<String>? keywords,
  }) {
    return AnswerModel(
      questionId: questionId ?? this.questionId,
      answers: answers ?? this.answers,
      keywords: keywords ?? this.keywords,
    );
  }
}
