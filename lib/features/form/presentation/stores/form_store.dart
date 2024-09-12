import '../../../../helpers/base_store.dart';
import 'form_state.dart';

class FormStore extends NotifyBaseStore<FormState> {
  FormStore() : super(FormState.initial());

  void onChangeRadio(int? value) {
    state.answers[state.currentQuestionId - 1].answers.clear();
    state.answers[state.currentQuestionId - 1].answers.add(value!);
    setState(
      state.copyWith(
        answers: state.answers,
      ),
    );
  }

  void onChangeCheckbox(int value) {
    state.answers[state.currentQuestionId - 1].answers.remove(0);
    if (state.answers[state.currentQuestionId - 1].answers.contains(value)) {
      state.answers[state.currentQuestionId - 1].answers.remove(value);
    } else {
      state.answers[state.currentQuestionId - 1].answers.add(value);
    }
    setState(
      state.copyWith(
        answers: state.answers,
      ),
    );
  }

  void nextQuestion() {
    int nextQuestionId;
    switch (state.currentQuestionId) {
      case 2:
        if (state.answers[1].answers.contains(2)) {
          nextQuestionId = 7;
        } else {
          nextQuestionId = 3;
        }
        break;
      default:
        nextQuestionId = state.currentQuestionId + 1;
    }
    setState(
      state.copyWith(
        currentQuestionId: nextQuestionId,
      ),
    );
  }
}
