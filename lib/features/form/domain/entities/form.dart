class FormEntity {
  final String date;
  final Map<String, String> answers;

  FormEntity({required this.date, required this.answers});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{'date': date};
    map.addAll(answers);
    return map;
  }
}
