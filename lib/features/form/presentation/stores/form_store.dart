import 'package:appea/helpers/base_store.dart';
import 'form_state.dart';

class FormStore extends NotifyBaseStore<FormState> {
  FormStore() : super(FormState.initial());

  void nextQuestion() {
    if (state.formDatabinding.defaultForm
            .firstWhere((element) => element.id == state.currentQuestionId)
            .nextQuestion !=
        null) {
      setState(
        state.copyWith(
          currentQuestionId:
              state.formDatabinding.defaultForm
                      .firstWhere(
                          (element) => element.id == state.currentQuestionId)
                      .nextQuestion!(
                  state.answers
                      .firstWhere(
                          (element) => element.questionId == state.currentQuestionId)
                      .answers),
        ),
      );
    } else {
      setState(
        state.copyWith(
          currentQuestionId: state.currentQuestionId + 1,
        ),
      );
    }
  }
}
