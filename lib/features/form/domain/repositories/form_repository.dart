import '../entities/history.dart';

abstract class FormRepository {
  Future<void> saveHistory(HistoryEntity history);
}
