import 'package:climate_change_projects/core/db_local/db_local.dart';
import 'package:climate_change_projects/features/form/data/models/history_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart' show ScrollController, Curves;

import '../../../../core/db_local/db_local_realm.dart';
import '../../../../helpers/base_state.dart';
import '../../../../helpers/base_store.dart';
import 'form_state.dart';

class FormStore extends NotifyBaseStore<FormState> {
  FormStore() : super(FormState.initial());
  final DbLocal dbLocal = DbLocalRealm([HistoryModel.schema]);
  void onChangeRadio(int? value, List<String>? keywords) {
    state.answers[state.currentQuestionId - 1].questionText =
        state.formDatabinding.defaultForm[state.currentQuestionId]!.question;
    state.answers[state.currentQuestionId - 1].answers.clear();
    state.answers[state.currentQuestionId - 1].answerTexts.clear();
    state.answers[state.currentQuestionId - 1].keywords.clear();
    state.answers[state.currentQuestionId - 1].answers.add(value!);
    state.answers[state.currentQuestionId - 1].answerTexts.add(state
        .formDatabinding.defaultForm[state.currentQuestionId]!.options!
        .firstWhere((element) => element.id == value)
        .option);
    state.answers[state.currentQuestionId - 1].keywords.addAll(keywords ?? []);
    setState(
      state.copyWith(
        answers: state.answers,
      ),
    );
  }

  void onChangeCheckbox(int value, List<String>? keywords) {
    state.answers[state.currentQuestionId - 1].questionText =
        state.formDatabinding.defaultForm[state.currentQuestionId]!.question;
    state.answers[state.currentQuestionId - 1].answers.remove(0);
    if (state.answers[state.currentQuestionId - 1].answers.contains(value)) {
      state.answers[state.currentQuestionId - 1].answers.remove(value);
      state.answers[state.currentQuestionId - 1].answerTexts.remove(state
          .formDatabinding.defaultForm[state.currentQuestionId]!.options!
          .firstWhere((element) => element.id == value)
          .option);
      state.answers[state.currentQuestionId - 1].keywords.removeWhere(
          (element) =>
              element ==
              state.answers[state.currentQuestionId - 1].keywords
                  .firstWhere((element) => element == keywords?.first));
    } else {
      state.answers[state.currentQuestionId - 1].answers.add(value);
      state.answers[state.currentQuestionId - 1].answerTexts.add(state
          .formDatabinding.defaultForm[state.currentQuestionId]!.options!
          .firstWhere((element) => element.id == value)
          .option);
      state.answers[state.currentQuestionId - 1].keywords
          .addAll(keywords ?? []);
    }
    setState(
      state.copyWith(
        answers: state.answers,
      ),
    );
  }

  void nextQuestion(ScrollController scrollController) {
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
        nextQuestionId = state.formDatabinding.defaultForm.values
            .toList()[(state.formDatabinding.defaultForm.values
                    .toList()
                    .indexWhere(
                        (element) => element.id == state.currentQuestionId) +
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
      case 34:
        if (state.answers[33].answers.contains(1)) {
          sendForm();
        }
        state.answers[34].answers.remove(0);
        state.answers[34].answers.add(1);
        nextQuestionId = 35;
        break;
      default:
        nextQuestionId = state.formDatabinding.defaultForm.values
            .toList()[(state.formDatabinding.defaultForm.values
                    .toList()
                    .indexWhere(
                        (element) => element.id == state.currentQuestionId) +
                1)]
            .id;
    }
    setState(
      state.copyWith(
        loading: BaseLoadingState.loaded,
        currentQuestionId: nextQuestionId,
      ),
    );
    scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void areasLogic() {
    if (!state.answers[11].answers.contains(1)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 13);
    }
    if (!state.answers[11].answers.contains(2)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 14);
    }
    if (!state.answers[11].answers.contains(3)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 15);
    }
    if (!state.answers[11].answers.contains(4)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 16);
    }
    if (!state.answers[11].answers.contains(5)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 17);
    }
    if (!state.answers[11].answers.contains(6)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 18);
    }
    if (!state.answers[11].answers.contains(7)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 19);
    }
    if (!state.answers[11].answers.contains(8)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 20);
    }
    if (!state.answers[11].answers.contains(9)) {
      state.formDatabinding.defaultForm
          .removeWhere((index, element) => element.id == 21);
    }
  }

  List<Map> getResults() {
    final Map<String, dynamic> results = {};
    final uniqueWords = state.answers
        .map((element) => element.keywords)
        .expand((element) => element)
        .toSet();

    for (final word in uniqueWords) {
      int count = state.answers
          .map((element) => element.keywords)
          .expand((element) => element)
          .where((keyword) => keyword == word)
          .length;
      results[word] = count;
    }
    final List<Map> data = [];
    for (final key in results.keys) {
      data.add({"word": key, "value": results[key]});
    }
    return data;
  }

  Set<String> getRecommendedKeywords(List<Map> keywords) {
    final Set<String> recommendedKeywords = {};
    for (var recommendedKeyword in state.formDatabinding.recomendedKeywords) {
      if (!keywords
          .map((element) => element['word'])
          .toList()
          .contains(recommendedKeyword)) {
        recommendedKeywords.add(recommendedKeyword);
      }
    }
    _saveAnswers(keywords, recommendedKeywords);
    return recommendedKeywords;
  }

  void _saveAnswers(List<Map> keywords, Set<String> recommendedKeywords) {
    dbLocal.openConection();
    dbLocal.add(HistoryModel(
        DateTime.now().toString(),
        _keywordsString(keywords),
        _recommendedKeywordsString(recommendedKeywords),
        answers: getQuestionOptions()));
    dbLocal.close();
  }

  String _keywordsString(List<Map> keywords) {
    String result = '';
    for (final keyword in keywords) {
      result += '${keyword['word']}@${keyword['value']}@';
    }
    return result;
  }

  String _recommendedKeywordsString(Set<String> recommendedKeywords) {
    String result = '';
    for (final keyword in recommendedKeywords) {
      result += '$keyword,';
    }
    return result;
  }

  Map<String, String> getQuestionOptions() {
    final Map<String, String> questionOptions = {};
    for (final answer in state.answers) {
      questionOptions[answer.questionText] = answer.answerTexts.join(', ');
    }
    return questionOptions;
  }

  Future<void> sendForm() async {
    final db = FirebaseFirestore.instance;
    final Map<String, dynamic> form = {
      "date": DateTime.now().toString(),
    };
    form.addAll(getQuestionOptions());
    form.removeWhere((key, value) => key.isEmpty);
    db.collection("form-answers").add(form);
  }

  Future<void> sendSuggestions() async {
    if (state.finalSuggestionsController.text.isEmpty) {
      return;
    }
    final db = FirebaseFirestore.instance;
    final suggestion = {
      "date": DateTime.now().toString(),
      "suggestion": state.finalSuggestionsController.text,
    };
    db.collection("suggestions").add(suggestion);
  }

  void dispose() {
    state.dispose();
  }
}
