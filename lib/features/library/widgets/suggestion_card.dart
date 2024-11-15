import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
        child: ListTile(
          isThreeLine: true,
          title: const Text('Conteúdo'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Descrição'),
              Row(
                children: [
                  Icon(Icons.note),
                  const SizedBox(width: 10),
                  Text(
                    'PT',
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
