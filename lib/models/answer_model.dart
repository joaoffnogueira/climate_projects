class AnswerModel {
  final int questionId;
  final List<int> answers;
  AnswerModel({
    required this.questionId,
    required this.answers,
  });

  AnswerModel copyWith({
    int? questionId,
    List<int>? answers,
  }) {
    return AnswerModel(
      questionId: questionId ?? this.questionId,
      answers: answers ?? this.answers,
    );
  }
}
