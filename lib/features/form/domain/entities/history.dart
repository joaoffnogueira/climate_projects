class HistoryEntity {
  final String title;
  final String keywords;
  final String recommendedKeywords;
  final Map<String, String> answers;

  HistoryEntity({
    required this.title,
    required this.keywords,
    required this.recommendedKeywords,
    required this.answers,
  });
}
