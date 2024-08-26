import 'package:appea/helpers/base_store.dart';
import 'form_state.dart';

class FormStore extends NotifyBaseStore<FormState> {
  FormStore() : super(FormState.initial());

  void onChangeRadio(int? value) {
    state.answers
        .where((element) => element.questionId == state.currentQuestionId)
        .first
        .answers
        .clear();
    state.answers
        .where((element) => element.questionId == state.currentQuestionId)
        .first
        .answers
        .add(value!);
    setState(
      state.copyWith(
        answers: state.answers,
      ),
    );
  }

  void onChangeCheckbox(int value) {
    if (!state.answers
        .where((element) => element.questionId == state.currentQuestionId)
        .first
        .answers
        .contains(value)) {
      state.answers
          .where((element) => element.questionId == state.currentQuestionId)
          .first
          .answers
          .add(value);
    } else {
      state.answers
          .where((element) => element.questionId == state.currentQuestionId)
          .first
          .answers
          .remove(value);
    }
    setState(
      state.copyWith(
        answers: state.answers,
      ),
    );
  }

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
                      .firstWhere((element) =>
                          element.questionId == state.currentQuestionId)
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
