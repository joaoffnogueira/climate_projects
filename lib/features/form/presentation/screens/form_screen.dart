import 'package:climate_change_projects/helpers/base_state.dart';

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
  late final ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    controller = FormStore();
  }

  @override
  void dispose() {
    controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ValueListenableBuilder(
        valueListenable: controller.valueListenable,
        builder: (context, state, __) {
          final currentQuestion = controller
              .state.formDatabinding.defaultForm[state.currentQuestionId]!;
          final currentAnswer =
              controller.state.answers[state.currentQuestionId - 1];
          return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: Visibility(
              visible: _scrollController.hasClients &&
                  _scrollController.position.maxScrollExtent > 0,
              child: FloatingActionButton.small(
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.hasClients &&
                            _scrollController.position.pixels ==
                                _scrollController.position.minScrollExtent
                        ? _scrollController.position.maxScrollExtent
                        : _scrollController.position.minScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Icon(Icons.swipe_vertical_rounded),
              ),
            ),
            backgroundColor: MyApp.themeHelper.backgroundColor,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text('EmergeClima'),
            ),
            body: Stack(
              alignment: Alignment.topCenter,
              children: [
                BackgroundWidget(
                    image: MyApp.themeHelper.image,
                    credit: MyApp.themeHelper.credit),
                Positioned(
                  top: 0,
                  width: size.width,
                  height: 5,
                  child: TweenAnimationBuilder<double>(
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Scrollbar(
                    controller: _scrollController,
                    thumbVisibility: true,
                    trackVisibility: true,
                    child: SingleChildScrollView(
                      controller: _scrollController,
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
                                child: Column(
                                  children: [
                                    Text(
                                      currentQuestion.question,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    Text(
                                        currentQuestion.type ==
                                                QuestionTypeEnum
                                                    .multipleResponse
                                            ? 'Selecione uma ou mais opções'
                                            : currentQuestion.type ==
                                                    QuestionTypeEnum
                                                        .multipleChoice
                                                ? 'Selecione apenas uma opção'
                                                : '',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: state.isError
                                                    ? Theme.of(context)
                                                        .colorScheme
                                                        .error
                                                    : Theme.of(context)
                                                        .colorScheme
                                                        .onSurface)),
                                  ],
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
                                  itemCount: currentQuestion.options?.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    if (currentQuestion.type ==
                                        QuestionTypeEnum.multipleResponse) {
                                      return CheckboxListTile(
                                        value: currentAnswer.answers.contains(
                                          currentQuestion.options![index].id,
                                        ),
                                        onChanged: (value) =>
                                            controller.onChangeCheckbox(
                                                currentQuestion
                                                    .options![index].id,
                                                currentQuestion
                                                    .options![index].keywords),
                                        subtitle: Row(
                                          children: [
                                            Visibility(
                                                visible: currentQuestion
                                                        .options![index]
                                                        .optionTip !=
                                                    null,
                                                child: Tooltip(
                                                    message: currentQuestion
                                                            .options![index]
                                                            .optionTip ??
                                                        '',
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    triggerMode:
                                                        TooltipTriggerMode.tap,
                                                    showDuration:
                                                        const Duration(
                                                            seconds: 30),
                                                    child: Icon(
                                                        Icons.info_outline))),
                                          ],
                                        ),
                                        title: Text(
                                          currentQuestion
                                              .options![index].option,
                                          softWrap: true,
                                        ),
                                      );
                                    }
                                    if (currentQuestion.type ==
                                        QuestionTypeEnum.multipleChoice) {
                                      return RadioListTile<int>(
                                        title: Text(currentQuestion
                                            .options![index].option),
                                        value:
                                            currentQuestion.options![index].id,
                                        groupValue: currentAnswer.answers.first,
                                        onChanged: (value) =>
                                            controller.onChangeRadio(
                                                value,
                                                currentQuestion
                                                    .options![index].keywords),
                                      );
                                    }
                                    if (currentQuestion.type ==
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
                            SizedBox(
                              width: 250,
                              child: ElevatedButton(
                                onPressed: () {
                                  currentAnswer.answers.contains(0) ||
                                          currentAnswer.answers.isEmpty
                                      ? controller.setState(
                                          controller.state.copyWith(
                                            loading: BaseLoadingState.error,
                                          ),
                                        )
                                      : controller.state.currentQuestionId == 35
                                          ? Navigator.of(context,
                                                  rootNavigator: true)
                                              .push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ResultsScreen(
                                                  keywords:
                                                      controller.getResults(),
                                                  recommendedKeywords: controller
                                                      .getRecommendedKeywords(
                                                          controller
                                                              .getResults()),
                                                  answersFromDb: controller
                                                      .getQuestionOptions(),
                                                ),
                                              ),
                                            )
                                          : controller.state.tipsDatabinding
                                                  .tips.keys
                                                  .contains(controller
                                                      .state.currentQuestionId)
                                              ? showDialog(
                                                  context: context,
                                                  builder: (context) => Dialog(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: SizedBox(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Icon(
                                                                Icons.lightbulb,
                                                                size: 50,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .primary,
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                controller
                                                                    .state
                                                                    .tipsDatabinding
                                                                    .tips[controller
                                                                        .state
                                                                        .currentQuestionId]!
                                                                    .text,
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .titleMedium,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              ElevatedButton(
                                                                onPressed: () {
                                                                  controller
                                                                      .nextQuestion(
                                                                          _scrollController);
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                        'Continuar'),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : controller.nextQuestion(
                                                  _scrollController);
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Próxima pergunta'),
                                    Icon(Icons.skip_next_rounded),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 85),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
