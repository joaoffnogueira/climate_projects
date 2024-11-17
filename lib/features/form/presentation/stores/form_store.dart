import 'package:climate_change_projects/core/db_local/db_local.dart';
import 'package:climate_change_projects/features/form/data/models/history_model.dart';
import 'package:flutter/material.dart' show ScrollController, Curves;

import '../../../../core/db_local/db_local_realm.dart';
import '../../../../helpers/base_state.dart';
import '../../../../helpers/base_store.dart';
import 'form_state.dart';

class FormStore extends NotifyBaseStore<FormState> {
  FormStore() : super(FormState.initial());
  final DbLocal dbLocal = DbLocalRealm([HistoryModel.schema]);
  void onChangeRadio(int? value, List<String>? keywords) {
    state.answers[state.currentQuestionId - 1].answers.clear();
    state.answers[state.currentQuestionId - 1].answers.add(value!);
    state.answers[state.currentQuestionId - 1].keywords.addAll(keywords ?? []);
    setState(
      state.copyWith(
        answers: state.answers,
      ),
    );
  }

  void onChangeCheckbox(int value, List<String>? keywords) {
    state.answers[state.currentQuestionId - 1].answers.remove(0);
    if (state.answers[state.currentQuestionId - 1].answers.contains(value)) {
      state.answers[state.currentQuestionId - 1].answers.remove(value);
      state.answers[state.currentQuestionId - 1].keywords.removeWhere(
          (element) =>
              element ==
              state.answers[state.currentQuestionId - 1].keywords
                  .firstWhere((element) => element == keywords?.first));
    } else {
      state.answers[state.currentQuestionId - 1].answers.add(value);
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
        nextQuestionId = state
            .formDatabinding
            .defaultForm.values
            .toList()[(state.formDatabinding.defaultForm.values.toList().indexWhere(
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
        state.answers[34].answers.remove(0);
        state.answers[34].answers.add(1);
        nextQuestionId = 35;
        break;
      default:
        nextQuestionId = state
            .formDatabinding
            .defaultForm.values
            .toList()[(state.formDatabinding.defaultForm.values.toList().indexWhere(
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
    _saveAnswers(data);
    return data;
  }

  void _saveAnswers(List<Map> keywords) {
    dbLocal.openConection();
    dbLocal.add(HistoryModel(DateTime.now().toString(),
        state.answers.toString(), _keywordsString(keywords)));
    dbLocal.close();
  }

  String _keywordsString(List<Map> keywords) {
    String result = '';
    for (final keyword in keywords) {
      result += '${keyword['word']} ${keyword['value']} ';
    }
    return result;
  }

  void dispose() {
    state.dispose();
  }
}
