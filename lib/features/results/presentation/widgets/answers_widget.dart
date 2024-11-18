import '../../../form/data/models/answer_model.dart';
import 'package:flutter/material.dart';

import '../../../form/data/models/tense_enum.dart';
import '../../../form/presentation/stores/form_databinding.dart';

class AnswersWidget extends StatelessWidget {
  final String answersFromDb;
  const AnswersWidget({required this.answersFromDb, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final questions = FormDatabinding(TenseEnum.present).defaultForm;
    final answers = List<AnswerModel>.from(
        answersFromDb.split('/').map((e) => AnswerModel.fromString(e)));
    return SizedBox(
      width: size.width * 0.95,
      height: size.height * 0.95,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          var answer = '';
          for (var i = 0; i < questions.length;) {
            if (answers[i].questionId == question?.id) {
              for (var j = 0; j < answers[i].answers.length;) {
                if (j > 0) {
                  answer += ', ${answers[i].answers[j]}';
                }
                break;
              }
            }
          }
          return ListTile(
            title: Text(question?.question ?? ''),
            subtitle: Text(answer.isNotEmpty ? answer : 'Sem resposta'),
          );
        },
      ),
    );
  }
}
