import 'package:climate_change_projects/features/form/presentation/stores/tips_databinding.dart';
import 'package:flutter/material.dart';
import '../../data/models/tense_enum.dart';
import 'form_databinding.dart';
import '../../data/models/answer_model.dart';

import '../../../../helpers/base_state.dart';

class FormState extends BaseState {
  final FormDatabinding formDatabinding;
  final TipsDatabinding tipsDatabinding;
  final int currentQuestionId;
  final List<AnswerModel> answers;
  final TenseEnum questionTense;
  final TextEditingController finalSuggestionsController;
  FormState({
    required super.loading,
    required super.errorMessage,
    required this.formDatabinding,
    required this.tipsDatabinding,
    required this.currentQuestionId,
    required this.answers,
    required this.questionTense,
    required this.finalSuggestionsController,
  });

  factory FormState.initial() {
    return FormState(
      errorMessage: null,
      loading: BaseLoadingState.initial,
      formDatabinding: FormDatabinding(TenseEnum.future),
      tipsDatabinding: TipsDatabinding(),
      currentQuestionId: 1,
      answers: List.generate(
          36,
          (index) => AnswerModel(
              questionId: index,
              questionText: '',
              answers: [0],
              answerTexts: List.empty(growable: true),
              keywords: List.empty(growable: true)),
          growable: false),
      questionTense: TenseEnum.future,
      finalSuggestionsController: TextEditingController(),
    );
  }

  FormState copyWith({
    BaseLoadingState? loading,
    String? errorMessage,
    FormDatabinding? formDatabinding,
    TipsDatabinding? tipsDatabinding,
    int? currentQuestionId,
    List<AnswerModel>? answers,
    TenseEnum? questionTense,
    TextEditingController? finalSuggestionsController,
  }) {
    return FormState(
      errorMessage: errorMessage ?? this.errorMessage,
      loading: loading ?? this.loading,
      formDatabinding: formDatabinding ?? this.formDatabinding,
      tipsDatabinding: tipsDatabinding ?? this.tipsDatabinding,
      currentQuestionId: currentQuestionId ?? this.currentQuestionId,
      answers: answers ?? this.answers,
      questionTense: questionTense ?? this.questionTense,
      finalSuggestionsController:
          finalSuggestionsController ?? this.finalSuggestionsController,
    );
  }

  void dispose() {
    finalSuggestionsController.dispose();
  }
}
