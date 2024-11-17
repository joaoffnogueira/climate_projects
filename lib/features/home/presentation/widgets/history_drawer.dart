import 'package:flutter/material.dart';

import '../../../../core/db_local/db_local.dart';
import '../../../../core/db_local/db_local_realm.dart';
import '../../../form/data/models/history_model.dart';
import '../../../results/presentation/results_screen.dart';

class HistoryDrawer extends StatefulWidget {
  const HistoryDrawer({super.key});

  @override
  State<HistoryDrawer> createState() => _HistoryDrawerState();
}

class _HistoryDrawerState extends State<HistoryDrawer> {
  final DbLocal dbLocal = DbLocalRealm([HistoryModel.schema]);
  late List<HistoryModel> history;

  @override
  void initState() {
    super.initState();
    dbLocal.openConection();
    history = dbLocal.all<HistoryModel>().reversed.toList();
  }

  @override
  void dispose() {
    dbLocal.close();
    super.dispose();
  }

  List<Map> _keywordsFromString(String string) {
    final List<Map> result = [];
    final parts = string.split(' ');
    for (var i = 0; i < parts.length - 1; i += 2) {
      result.add({"word": parts[i], "value": int.parse(parts[i + 1])});
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Material(
      child: SizedBox(
        width: size.width * 0.55,
        height: size.height,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                Text('Histórico'),
                Text(
                  'Até 10 análises mais recentes',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          body: ListView.builder(
            itemCount: history.length,
            itemBuilder: (context, index) {
              final dateTime = DateTime.parse(history[index].title);
              return ListTile(
                title: Text(
                  '${dateTime.day}/${dateTime.month}/${dateTime.year} - ${dateTime.hour}:${dateTime.minute}',
                ),
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => ResultsScreen(
                        keywords: _keywordsFromString(history[index].keywords),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
