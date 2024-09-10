import '../../../../helpers/background_widget.dart';
import '../../../../main.dart';
import '../../../results/presentation/results_screen.dart';
import '../../data/models/question_type_enum.dart';
import 'package:flutter/material.dart';

import '../stores/form_store.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late final FormStore controller;
  @override
  void initState() {
    super.initState();
    controller = FormStore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeHelper.backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Refletir Ações pelo clima'),
      ),
      body: Stack(
        children: [
          BackgroundWidget(
              image: MyApp.themeHelper.image, credit: MyApp.themeHelper.credit),
          ValueListenableBuilder(
              valueListenable: controller.valueListenable,
              builder: (context, state, __) {
                return Center(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Card(
                            color: Theme.of(context)
                                .colorScheme
                                .surface
                                .withOpacity(0.9),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.state.formDatabinding.defaultForm
                                    .firstWhere((element) =>
                                        element.id ==
                                        controller.state.currentQuestionId)
                                    .question,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ),
                          ),
                          Card(
                            color: Theme.of(context)
                                .colorScheme
                                .surface
                                .withOpacity(0.9),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                itemCount: controller
                                    .state.formDatabinding.defaultForm
                                    .firstWhere((element) =>
                                        element.id ==
                                        controller.state.currentQuestionId)
                                    .options
                                    ?.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  if (controller
                                          .state.formDatabinding.defaultForm
                                          .firstWhere((element) =>
                                              element.id ==
                                              controller
                                                  .state.currentQuestionId)
                                          .type ==
                                      QuestionTypeEnum.multipleResponse) {
                                    return CheckboxListTile(
                                      value: controller.state.answers
                                          .firstWhere((element) =>
                                              element.questionId ==
                                              controller
                                                  .state.currentQuestionId)
                                          .answers
                                          .contains(
                                            controller.state.formDatabinding
                                                .defaultForm
                                                .firstWhere((element) =>
                                                    element.id ==
                                                    controller.state
                                                        .currentQuestionId)
                                                .options![index]
                                                .id,
                                          ),
                                      onChanged: (value) =>
                                          controller.onChangeCheckbox(controller
                                              .state.formDatabinding.defaultForm
                                              .firstWhere((element) =>
                                                  element.id ==
                                                  controller
                                                      .state.currentQuestionId)
                                              .options![index]
                                              .id),
                                      title: Text(controller
                                          .state.formDatabinding.defaultForm
                                          .firstWhere((element) =>
                                              element.id ==
                                              controller
                                                  .state.currentQuestionId)
                                          .options![index]
                                          .option),
                                    );
                                  }
                                  if (controller
                                          .state.formDatabinding.defaultForm
                                          .firstWhere((element) =>
                                              element.id ==
                                              controller
                                                  .state.currentQuestionId)
                                          .type ==
                                      QuestionTypeEnum.multipleChoice) {
                                    return RadioListTile<int>(
                                      title: Text(controller
                                          .state.formDatabinding.defaultForm
                                          .firstWhere((element) =>
                                              element.id ==
                                              controller
                                                  .state.currentQuestionId)
                                          .options![index]
                                          .option),
                                      value: controller
                                          .state.formDatabinding.defaultForm
                                          .firstWhere((element) =>
                                              element.id ==
                                              controller
                                                  .state.currentQuestionId)
                                          .options![index]
                                          .id,
                                      groupValue: controller.state.answers
                                          .firstWhere((element) =>
                                              element.questionId ==
                                              controller
                                                  .state.currentQuestionId)
                                          .answers
                                          .first,
                                      onChanged: controller.onChangeRadio,
                                    );
                                  }
                                  return const SizedBox();
                                },
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.state.answers
                                          .where((element) =>
                                              element.questionId ==
                                              controller
                                                  .state.currentQuestionId)
                                          .first
                                          .answers
                                          .contains(0) ||
                                      controller.state.answers
                                          .where((element) =>
                                              element.questionId ==
                                              controller
                                                  .state.currentQuestionId)
                                          .first
                                          .answers
                                          .isEmpty
                                  ? null
                                  : controller.state.currentQuestionId == 45
                                      ? Navigator.of(context,
                                              rootNavigator: true)
                                          .push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ResultsScreen(),
                                          ),
                                        )
                                      : controller.nextQuestion();
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Próxima pergunta'),
                                Icon(Icons.skip_next_rounded),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
