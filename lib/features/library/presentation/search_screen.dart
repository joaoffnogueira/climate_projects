import 'package:climate_change_projects/features/library/data/models/suggestion_lang_enum.dart';
import 'package:climate_change_projects/features/library/data/models/suggestion_type_enum.dart';
import 'package:climate_change_projects/features/library/presentation/stores/library_store.dart';
import 'package:flutter/material.dart';

import '../../../helpers/background_widget.dart';
import '../../../main.dart';
import '../data/models/suggestion_category_enum.dart';
import 'widgets/suggestion_card.dart';

class SearchScreen extends StatefulWidget {
  final SuggestionCategoryEnum categoryFilter;
  const SearchScreen({required this.categoryFilter, super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final LibraryStore controller;

  @override
  void initState() {
    controller = LibraryStore(widget.categoryFilter);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
        alignment: Alignment.topCenter,
        children: [
          BackgroundWidget(
              image: MyApp.themeHelper.image, credit: MyApp.themeHelper.credit),
          Positioned(
            top: 10,
            child: SizedBox(
              width: size.width * 0.95,
              height: size.height * 0.85,
              child: ValueListenableBuilder(
                  valueListenable: controller.valueListenable,
                  builder: (context, state, __) {
                    return Column(
                      children: <Widget>[
                        Card(
                          color: Theme.of(context)
                              .colorScheme
                              .surface
                              .withOpacity(0.9),
                          child: SizedBox(
                            width: size.width * 0.95,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          controller:
                                              controller.state.searchController,
                                          decoration: InputDecoration(
                                            hintText: 'Pesquisar',
                                            prefixIcon: Icon(Icons.search),
                                          ),
                                          onChanged: (value) =>
                                              controller.filterSuggestions(),
                                        ),
                                      ),
                                      Visibility(
                                        visible: controller
                                                .state
                                                .searchController
                                                ?.text
                                                .isNotEmpty ??
                                            false,
                                        child: IconButton(
                                          icon: Icon(Icons.clear),
                                          onPressed: () {
                                            controller.state.searchController
                                                ?.clear();
                                            controller.filterSuggestions();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Tipo:'),
                                      const SizedBox(width: 10),
                                      ChoiceChip(
                                        label: Icon(Icons.article_rounded),
                                        labelPadding: EdgeInsets.all(0),
                                        selected: controller.state.typeFilter ==
                                            SuggestionTypeEnum.text,
                                        onSelected: (value) =>
                                            controller.setTypeFilter(
                                                SuggestionTypeEnum.text),
                                        tooltip: 'Texto',
                                      ),
                                      ChoiceChip(
                                        label: Icon(Icons.newspaper_rounded),
                                        labelPadding: EdgeInsets.all(0),
                                        selected: controller.state.typeFilter ==
                                            SuggestionTypeEnum.news,
                                        onSelected: (value) =>
                                            controller.setTypeFilter(
                                                SuggestionTypeEnum.news),
                                        tooltip: 'Notícia',
                                      ),
                                      ChoiceChip(
                                        label: Icon(Icons.music_note_rounded),
                                        labelPadding: EdgeInsets.all(0),
                                        selected: controller.state.typeFilter ==
                                            SuggestionTypeEnum.audio,
                                        onSelected: (value) =>
                                            controller.setTypeFilter(
                                                SuggestionTypeEnum.audio),
                                        tooltip: 'Áudio',
                                      ),
                                      ChoiceChip(
                                        label:
                                            Icon(Icons.videogame_asset_rounded),
                                        labelPadding: EdgeInsets.all(0),
                                        selected: controller.state.typeFilter ==
                                            SuggestionTypeEnum.game,
                                        onSelected: (value) =>
                                            controller.setTypeFilter(
                                                SuggestionTypeEnum.game),
                                        tooltip: 'Jogo',
                                      ),
                                      ChoiceChip(
                                        label: Icon(Icons.auto_graph_rounded),
                                        labelPadding: EdgeInsets.all(0),
                                        selected: controller.state.typeFilter ==
                                            SuggestionTypeEnum.image,
                                        onSelected: (value) =>
                                            controller.setTypeFilter(
                                                SuggestionTypeEnum.image),
                                        tooltip: 'Infográfico',
                                      ),
                                      ChoiceChip(
                                        label: Icon(
                                            Icons.video_collection_rounded),
                                        labelPadding: EdgeInsets.all(0),
                                        selected: controller.state.typeFilter ==
                                            SuggestionTypeEnum.video,
                                        onSelected: (value) =>
                                            controller.setTypeFilter(
                                                SuggestionTypeEnum.video),
                                        tooltip: 'Vídeo',
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Idioma:'),
                                      const SizedBox(width: 10),
                                      ChoiceChip(
                                        label: Text('PT'),
                                        labelPadding: EdgeInsets.all(0),
                                        selected: controller.state.langFilter ==
                                            SuggestionLangEnum.pt,
                                        onSelected: (selected) =>
                                            controller.setLangFilter(
                                                SuggestionLangEnum.pt),
                                        tooltip: 'Português',
                                      ),
                                      const SizedBox(width: 10),
                                      ChoiceChip(
                                        label: Text('EN'),
                                        labelPadding: EdgeInsets.all(0),
                                        selected: controller.state.langFilter ==
                                            SuggestionLangEnum.en,
                                        onSelected: (selected) =>
                                            controller.setLangFilter(
                                                SuggestionLangEnum.en),
                                        tooltip: 'Inglês',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: SizedBox(
                            width: size.width * 0.95,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ListView.builder(
                                itemCount: controller.state.databinding
                                    .filteredSuggestions.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return SuggestionCard(
                                    title: controller.state.databinding
                                        .filteredSuggestions[index].title,
                                    subtitle: controller.state.databinding
                                        .filteredSuggestions[index].subtitle,
                                    lang: controller.state.databinding
                                        .filteredSuggestions[index].lang,
                                    type: controller.state.databinding
                                        .filteredSuggestions[index].type,
                                    url: controller.state.databinding
                                        .filteredSuggestions[index].url,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
