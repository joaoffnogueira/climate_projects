import 'dart:ui' as ui;
import 'package:climate_change_projects/features/results/presentation/widgets/answers_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:gal/gal.dart';
import 'package:word_cloud/word_cloud.dart';

import '../../../helpers/background_widget.dart';
import '../../../l10n/localization_context.dart';
import '../../../main.dart';
import '../../library/presentation/library_screen.dart';

class ResultsScreen extends StatefulWidget {
  final List<Map<dynamic, dynamic>> keywords;
  final Set<String> recommendedKeywords;
  final String answersFromDb;
  const ResultsScreen(
      {required this.keywords,
      required this.recommendedKeywords,
      required this.answersFromDb,
      super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  final GlobalKey _widgetKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
                    Card(
                      color: Theme.of(context)
                          .colorScheme
                          .surface
                          .withOpacity(0.9),
                      child: Column(
                        children: [
                          Text(
                            'Pontos fortes do seu projeto',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          RepaintBoundary(
                            key: _widgetKey,
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
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Respostas'),
                                    content: AnswersWidget(
                                        answersFromDb: widget.answersFromDb),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Fechar'),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.check_box_rounded),
                              Text('Ver Respostas'),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            try {
                              final dateTime = DateTime.now();
                              RenderRepaintBoundary boundary =
                                  _widgetKey.currentContext!.findRenderObject()
                                      as RenderRepaintBoundary;
                              ui.Image image =
                                  await boundary.toImage(pixelRatio: 10.0);
                              ByteData? byteData = await image.toByteData(
                                  format: ui.ImageByteFormat.png);
                              Uint8List pngBytes =
                                  byteData!.buffer.asUint8List();
                              var hasAccess = await Gal.hasAccess();
                              !hasAccess
                                  ? await Gal.requestAccess().then((value) {
                                      if (value) {
                                        Gal.putImageBytes(pngBytes,
                                            name:
                                                'IMG-${dateTime.day}-${dateTime.month}-${dateTime.year}-${dateTime.hour}h${dateTime.minute}.png');
                                      } else {
                                        throw 'Permissão negada';
                                      }
                                    })
                                  : await Gal.putImageBytes(pngBytes,
                                      name:
                                          'IMG-${dateTime.day}-${dateTime.month}-${dateTime.year}-${dateTime.hour}h${dateTime.minute}.png');

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Imagem salva na galeria'),
                                ),
                              );
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Permissão negada'),
                                ),
                              );
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.download_rounded),
                              Text('Baixar imagem'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Card(
                      color: Theme.of(context)
                          .colorScheme
                          .surface
                          .withOpacity(0.9),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Temas recomendados para aprofundamento:',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              widget.recommendedKeywords.join(', '),
                              maxLines: 30,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                              textAlign: TextAlign.center,
                            ),
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
                        padding: const EdgeInsets.all(16.0),
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
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                builder: (context) => const LibraryScreen(),
                              ),
                            );
                          },
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
