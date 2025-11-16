import '../repositories/form_repository.dart';
import '../entities/history.dart';

class SaveHistoryUseCase {
  final FormRepository repository;

  SaveHistoryUseCase(this.repository);

  Future<void> execute(HistoryEntity history) async {
    try {
      await repository.saveHistory(history);
    } catch (e) {
      rethrow;
    }
  }
}
