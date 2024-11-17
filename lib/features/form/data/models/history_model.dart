import 'package:realm/realm.dart';
part 'history_model.realm.dart';

@RealmModel()
class _HistoryModel {
  @PrimaryKey()
  late String title;
  late String answers;
  late String keywords;
}
