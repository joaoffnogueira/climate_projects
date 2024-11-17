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

  @override
  String toString() {
    return '$questionId ${answers.join(',')} ${keywords.join(',')}';
  }

  factory AnswerModel.fromString(String string) {
    final parts = string.split(' ');
    return AnswerModel(
      questionId: int.parse(parts[0]),
      answers: parts[1].split(',').map(int.parse).toList(),
      keywords: parts[2].split(','),
    );
  }
}
