import '../repositories/form_repository.dart';
import '../entities/form.dart';

class SaveFormUseCase {
  final FormRepository repository;

  SaveFormUseCase(this.repository);

  Future<void> execute(FormEntity form) async {
    try {
      await repository.saveForm(form);
    } catch (e) {
      // Let caller handle errors; repository already logs to Crashlytics.
      rethrow;
    }
  }
}
