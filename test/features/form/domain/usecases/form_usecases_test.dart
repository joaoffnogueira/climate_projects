import 'package:flutter_test/flutter_test.dart';
import 'package:climate_change_projects/features/form/domain/usecases/save_history_usecase.dart';
import 'package:climate_change_projects/features/form/domain/repositories/form_repository.dart';
import 'package:climate_change_projects/features/form/domain/entities/history.dart';

class _FakeRepo implements FormRepository {
  bool savedHistory = false;

  @override
  Future<void> saveHistory(HistoryEntity history) async {
    savedHistory = true;
  }
}

void main() {

  test('SaveHistoryUseCase forwards entity to repository', () async {
    final repo = _FakeRepo();
    final uc = SaveHistoryUseCase(repo);
    final history = HistoryEntity(
        title: 't',
        keywords: 'k',
        recommendedKeywords: 'r',
        answers: {'q': 'a'});
    await uc.execute(history);
    expect(repo.savedHistory, isTrue);
  });
}
