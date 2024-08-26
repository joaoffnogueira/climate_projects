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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('widget.title'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.book),
            onPressed: () {},
          ),
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: controller.valueListenable,
          builder: (context, state, __) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: 350,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          controller.state.formDatabinding.defaultForm
                              .firstWhere((element) =>
                                  element.id ==
                                  controller.state.currentQuestionId)
                              .question,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Loren ipsum dolor sit amet',
                  ),
                  Text(
                    '_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Text('Increment'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
