class TipModel {
  final String text;
  final String? image;

  TipModel({
    required this.text,
    this.image,
  });
}

enum TipEnum {
  diagnosis(2),
  participation(8),
  dimensions(12),
  emotions(23),
  emotionalConection(24),
  feedback(31);

  final int id;
  const TipEnum(this.id);
}