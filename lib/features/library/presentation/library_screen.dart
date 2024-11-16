import 'package:climate_change_projects/features/library/presentation/widgets/section_card.dart';
import 'package:flutter/material.dart';

import '../../../helpers/background_widget.dart';
import '../../../main.dart';
import '../data/models/suggestion_category_enum.dart';
import 'search_screen.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: MyApp.themeHelper.backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Biblioteca'),
      ),
      body: Stack(
        children: [
          BackgroundWidget(
              image: MyApp.themeHelper.image, credit: MyApp.themeHelper.credit),
          Center(
            child: SingleChildScrollView(
              child: SizedBox(
                width: size.width * 0.95,
                height: size.height * 0.90,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    SectionCard(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (context) => const SearchScreen(
                              categoryFilter: SuggestionCategoryEnum.diagnosis,
                            ),
                          ),
                        );
                      },
                      title: 'Diagnóstico',
                      icon: Icons.thermostat,
                    ),
                    SectionCard(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (context) => const SearchScreen(
                              categoryFilter: SuggestionCategoryEnum.project,
                            ),
                          ),
                        );
                      },
                      title: 'Projeto',
                      icon: Icons.note_alt_rounded,
                    ),
                    SectionCard(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (context) => const SearchScreen(
                              categoryFilter:
                                  SuggestionCategoryEnum.climateEmergency,
                            ),
                          ),
                        );
                      },
                      title: 'Emergência Climática',
                      icon: Icons.thunderstorm,
                      iconSize: 55,
                    ),
                    SectionCard(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (context) => const SearchScreen(
                              categoryFilter: SuggestionCategoryEnum.evaluation,
                            ),
                          ),
                        );
                      },
                      title: 'Avaliação',
                      icon: Icons.checklist_rounded,
                    ),
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
