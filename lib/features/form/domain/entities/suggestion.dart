class SuggestionEntity {
  final String date;
  final String suggestion;

  SuggestionEntity({required this.date, required this.suggestion});

  Map<String, dynamic> toMap() => {'date': date, 'suggestion': suggestion};
}
