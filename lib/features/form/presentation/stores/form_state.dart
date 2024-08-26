import 'package:appea/features/form/data/models/tense_enum.dart';
import 'package:appea/features/form/presentation/stores/form_databinding.dart';
import 'package:appea/features/form/data/models/answer_model.dart';

import '../../../../helpers/base_state.dart';

class FormState extends BaseState {
  final FormDatabinding formDatabinding;
  final int currentQuestionId;
  final List<AnswerModel> answers;
  final TenseEnum questionTense;
  FormState({
    required super.loading,
    required super.errorMessage,
    required this.formDatabinding,
    required this.currentQuestionId,
    required this.answers,
    required this.questionTense,
  });

  factory FormState.initial() {
    return FormState(
      errorMessage: null,
      loading: BaseLoadingState.initial,
      formDatabinding: FormDatabinding(),
      currentQuestionId: 1,
      answers: List.generate(
          46, (index) => AnswerModel(questionId: index, answers: [0]),
          growable: false),
      questionTense: TenseEnum.future,
    );
  }

  FormState copyWith({
    BaseLoadingState? loading,
    String? errorMessage,
    FormDatabinding? formDatabinding,
    int? currentQuestionId,
    List<AnswerModel>? answers,
    TenseEnum? questionTense,
  }) {
    return FormState(
      errorMessage: errorMessage ?? this.errorMessage,
      loading: loading ?? this.loading,
      formDatabinding: formDatabinding ?? this.formDatabinding,
      currentQuestionId: currentQuestionId ?? this.currentQuestionId,
      answers: answers ?? this.answers,
      questionTense: questionTense ?? this.questionTense,
    );
  }
}
