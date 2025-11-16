import 'package:flutter_test/flutter_test.dart';
import 'package:climate_change_projects/features/form/domain/usecases/save_form_usecase.dart';
import 'package:climate_change_projects/features/form/domain/usecases/save_suggestion_usecase.dart';
import 'package:climate_change_projects/features/form/domain/usecases/save_history_usecase.dart';
import 'package:climate_change_projects/features/form/domain/repositories/form_repository.dart';
import 'package:climate_change_projects/features/form/domain/entities/form.dart';
import 'package:climate_change_projects/features/form/domain/entities/suggestion.dart';
import 'package:climate_change_projects/features/form/domain/entities/history.dart';

class _FakeRepo implements FormRepository {
  bool savedForm = false;
  bool savedSuggestion = false;
  bool savedHistory = false;

  @override
  Future<void> saveForm(FormEntity form) async {
    savedForm = true;
  }

  @override
  Future<void> saveSuggestion(SuggestionEntity suggestion) async {
    savedSuggestion = true;
  }

  @override
  Future<void> saveHistory(HistoryEntity history) async {
    savedHistory = true;
  }
}

void main() {
  test('SaveFormUseCase forwards entity to repository', () async {
    final repo = _FakeRepo();
    final uc = SaveFormUseCase(repo);
    final form = FormEntity(date: 'd', answers: {'q': 'a'});
    await uc.execute(form);
    expect(repo.savedForm, isTrue);
  });

  test('SaveSuggestionUseCase forwards entity to repository', () async {
    final repo = _FakeRepo();
    final uc = SaveSuggestionUseCase(repo);
    final suggestion = SuggestionEntity(date: 'd', suggestion: 's');
    await uc.execute(suggestion);
    expect(repo.savedSuggestion, isTrue);
  });

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
