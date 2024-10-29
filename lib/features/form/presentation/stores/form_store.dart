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
      case 1:
        state.formDatabinding.changeTense(state.answers[0].answers);
        nextQuestionId = 2;
        break;
      case 2:
        if (state.answers[1].answers.contains(2)) {
          nextQuestionId = 7;
        } else {
          nextQuestionId = 3;
        }
        break;
      case 8:
        if (state.answers[7].answers.contains(2)) {
          nextQuestionId = 11;
        } else {
          nextQuestionId = 9;
        }
        break;
      case 12:
        areasLogic();
        nextQuestionId = state
            .formDatabinding
            .defaultForm[(state.formDatabinding.defaultForm.indexOf(
                    state.formDatabinding.defaultForm.firstWhere(
                        (element) => element.id == state.currentQuestionId)) +
                1)]
            .id;
        break;
      case 24:
        if (state.answers[23].answers.contains(2)) {
          nextQuestionId = 26;
        } else {
          nextQuestionId = 25;
        }
        break;
      default:
        nextQuestionId = state
            .formDatabinding
            .defaultForm[(state.formDatabinding.defaultForm.indexOf(
                    state.formDatabinding.defaultForm.firstWhere(
                        (element) => element.id == state.currentQuestionId)) +
                1)]
            .id;
    }
    setState(
      state.copyWith(
        currentQuestionId: nextQuestionId,
      ),
    );
  }

  void areasLogic() {
    if (!state.answers[11].answers.contains(1)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 13);
    }
    if (!state.answers[11].answers.contains(2)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 14);
    }
    if (!state.answers[11].answers.contains(3)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 15);
    }
    if (!state.answers[11].answers.contains(4)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 16);
    }
    if (!state.answers[11].answers.contains(5)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 17);
    }
    if (!state.answers[11].answers.contains(6)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 18);
    }
    if (!state.answers[11].answers.contains(7)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 19);
    }
    if (!state.answers[11].answers.contains(8)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 20);
    }
    if (!state.answers[11].answers.contains(9)) {
      state.formDatabinding.defaultForm
          .removeWhere((element) => element.id == 21);
    }
  }
}
