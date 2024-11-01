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
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: MyApp.themeHelper.backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('EmergeClima'),
      ),
      body: Stack(
        children: [
          BackgroundWidget(
              image: MyApp.themeHelper.image, credit: MyApp.themeHelper.credit),
          Positioned(
            top: 0,
            width: size.width,
            height: 5,
            child: ValueListenableBuilder(
              valueListenable: controller.valueListenable,
              builder: (context, state, __) {
                return TweenAnimationBuilder<double>(
                  tween: Tween<double>(
                      begin: 0, end: state.currentQuestionId / 36),
                  duration: const Duration(milliseconds: 500),
                  builder: (context, value, child) {
                    return LinearProgressIndicator(
                      value: value,
                      valueColor:
                          controller.valueListenable.value.currentQuestionId %
                                      2 ==
                                  0
                              ? AlwaysStoppedAnimation(
                                  Theme.of(context).colorScheme.primary)
                              : AlwaysStoppedAnimation(
                                  Theme.of(context).colorScheme.secondary),
                    );
                  },
                );
              },
            ),
          ),
          ValueListenableBuilder(
              valueListenable: controller.valueListenable,
              builder: (context, state, __) {
                return Center(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: size.width * 0.9,
                      child: Column(
                        children: <Widget>[
                          Card(
                            color: Theme.of(context)
                                .colorScheme
                                .surface
                                .withOpacity(0.9),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${controller.state.formDatabinding.defaultForm.firstWhere((element) => element.id == state.currentQuestionId).id} - ${controller.state.formDatabinding.defaultForm.firstWhere((element) => element.id == state.currentQuestionId).question}',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Card(
                            color: Theme.of(context)
                                .colorScheme
                                .surface
                                .withOpacity(0.9),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                primary: false,
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
                                      value: controller
                                          .state
                                          .answers[state.currentQuestionId - 1]
                                          .answers
                                          .contains(
                                        controller
                                            .state.formDatabinding.defaultForm
                                            .firstWhere((element) =>
                                                element.id ==
                                                controller
                                                    .state.currentQuestionId)
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
                                      groupValue: controller
                                          .state
                                          .answers[state.currentQuestionId - 1]
                                          .answers
                                          .first,
                                      onChanged: controller.onChangeRadio,
                                    );
                                  }
                                  if (controller
                                          .state.formDatabinding.defaultForm
                                          .firstWhere((element) =>
                                              element.id ==
                                              controller
                                                  .state.currentQuestionId)
                                          .type ==
                                      QuestionTypeEnum.text) {
                                    return TextField(
                                      minLines: 1,
                                      maxLines: 10,
                                    );
                                  }
                                  return const SizedBox();
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              controller
                                          .state
                                          .answers[state.currentQuestionId - 1]
                                          .answers
                                          .contains(0) ||
                                      controller
                                          .state
                                          .answers[state.currentQuestionId - 1]
                                          .answers
                                          .isEmpty
                                  ? null
                                  : controller.state.currentQuestionId == 35
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
