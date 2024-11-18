import 'package:flutter/material.dart';

class AnswersWidget extends StatelessWidget {
  final Map<String, String> answersFromDb;
  const AnswersWidget({required this.answersFromDb, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final answers = Map<String, String>.from(answersFromDb);
    answers.removeWhere((key, value) => key == '');
    return SizedBox(
      width: size.width * 0.95,
      height: size.height * 0.95,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: answers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(answers.keys.elementAt(index)),
            subtitle: Text(answers.values.elementAt(index)),
          );
        },
      ),
    );
  }
}
