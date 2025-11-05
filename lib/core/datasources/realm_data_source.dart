import 'package:climate_change_projects/core/db_local/db_local.dart';
import 'package:climate_change_projects/features/form/data/models/history_model.dart';

class RealmDataSource {
  final DbLocal dbLocal;

  RealmDataSource(this.dbLocal);

  void saveHistory({
    required String title,
    required String keywords,
    required String recommendedKeywords,
    required Map<String, String> answers,
  }) {
    dbLocal.openConection();
    dbLocal.add(
        HistoryModel(title, keywords, recommendedKeywords, answers: answers));
    dbLocal.close();
  }
}
