import 'package:flutter/material.dart';

import '../../../../l10n/localization_context.dart';

class HistoryDrawer extends StatelessWidget {
  const HistoryDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Material(
      child: SizedBox(
        width: size.width * 0.8,
        height: size.height,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Histórico de análises'),
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
