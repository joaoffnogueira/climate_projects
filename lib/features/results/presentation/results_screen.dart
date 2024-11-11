import 'package:flutter/material.dart';
import 'package:word_cloud/word_cloud.dart';

import '../../../helpers/background_widget.dart';
import '../../../l10n/localization_context.dart';
import '../../../main.dart';

class ResultsScreen extends StatefulWidget {
  final List<Map<dynamic, dynamic>> keywords;
  const ResultsScreen({required this.keywords, super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    print(widget.keywords);
    return Scaffold(
      backgroundColor: MyApp.themeHelper.backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Resultado'),
      ),
      body: Stack(
        children: [
          BackgroundWidget(
              image: MyApp.themeHelper.image, credit: MyApp.themeHelper.credit),
          Center(
            child: SingleChildScrollView(
              child: SizedBox(
                width: size.width * 0.95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InteractiveViewer(
                      child: Card(
                        color: Theme.of(context)
                            .colorScheme
                            .surface
                            .withOpacity(0.9),
                        child: WordCloudView(
                          data: WordCloudData(data: widget.keywords),
                          mapwidth: size.width * 0.95,
                          mapheight: size.width * 0.95,
                          mintextsize: 10,
                          maxtextsize: 30,
                          shape: WordCloudCircle(radius: 175),
                          colorlist: [
                            Theme.of(context).colorScheme.primary,
                            Theme.of(context).colorScheme.secondary,
                            Theme.of(context).colorScheme.tertiary,
                          ],
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
                        child: Column(
                          children: [
                            Text(
                              '•${Localization.tr.result1}',
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '•${Localization.tr.result2}',
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '•${Localization.tr.result3}',
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '•${Localization.tr.result4}',
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              Localization.tr.result_question,
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.book),
                              Text(Localization.tr.result_option1),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true)
                                .popUntil((route) => route.isFirst);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home),
                              Text(Localization.tr.result_option2),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
