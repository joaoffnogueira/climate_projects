import 'package:climate_change_projects/features/library/data/models/suggestion_lang_enum.dart';
import 'package:climate_change_projects/features/library/data/models/suggestion_type_enum.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final SuggestionLangEnum lang;
  final SuggestionTypeEnum type;
  final String url;
  const SuggestionCard(
      {required this.title,
      required this.subtitle,
      required this.lang,
      required this.type,
      required this.url,
      super.key});

  @override
  Widget build(BuildContext context) {
    final IconData icon;
    switch (type) {
      case SuggestionTypeEnum.text:
        icon = Icons.article_rounded;
      case SuggestionTypeEnum.news:
        icon = Icons.newspaper_rounded;
      case SuggestionTypeEnum.audio:
        icon = Icons.music_note_rounded;
      case SuggestionTypeEnum.video:
        icon = Icons.video_collection_rounded;
      case SuggestionTypeEnum.image:
        icon = Icons.auto_graph_rounded;
      case SuggestionTypeEnum.game:
        icon = Icons.videogame_asset_rounded;
      default:
        icon = Icons.lightbulb;
    }
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
        child: ListTile(
          isThreeLine: true,
          title: Text(title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subtitle),
              Row(
                children: [
                  Icon(icon),
                  const SizedBox(width: 10),
                  Text(
                    lang.name.toUpperCase(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          trailing: IconButton(
            icon: const Icon(Icons.open_in_new_rounded),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
