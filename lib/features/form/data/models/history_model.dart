import 'package:realm/realm.dart';
part 'history_model.realm.dart';

@RealmModel()
class _HistoryModel {
  @PrimaryKey()
  late String title;
  late Map<String, String> answers;
  late String keywords;
  late String recommendedKeywords;
}
