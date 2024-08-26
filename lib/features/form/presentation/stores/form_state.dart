import 'package:appea/features/form/presentation/stores/form_databinding.dart';
import 'package:appea/models/answer_model.dart';

import '../../../../helpers/base_state.dart';

class FormState extends BaseState {
  final FormDatabinding formDatabinding;
  final int currentQuestionId;
  final List<AnswerModel> answers;
  FormState({
    required super.loading,
    required super.errorMessage,
    required this.formDatabinding,
    required this.currentQuestionId,
    required this.answers,
  });

  factory FormState.initial() {
    return FormState(
      errorMessage: null,
      loading: BaseLoadingState.initial,
      formDatabinding: FormDatabinding(),
      currentQuestionId: 1,
      answers: [],
    );
  }

  FormState copyWith({
    BaseLoadingState? loading,
    String? errorMessage,
    FormDatabinding? formDatabinding,
    int? currentQuestionId,
    List<AnswerModel>? answers,
  }) {
    return FormState(
      errorMessage: errorMessage ?? this.errorMessage,
      loading: loading ?? this.loading,
      formDatabinding: formDatabinding ?? this.formDatabinding,
      currentQuestionId: currentQuestionId ?? this.currentQuestionId,
      answers: answers ?? this.answers,
    );
  }
}
