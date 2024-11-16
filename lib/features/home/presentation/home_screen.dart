import 'package:climate_change_projects/main.dart';
import 'package:flutter/material.dart';

import '../../../helpers/background_widget.dart';
import '../../form/presentation/screens/form_screen.dart';
import '../../library/presentation/library_screen.dart';
import 'widgets/history_drawer.dart';
import 'widgets/info_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: MyApp.themeHelper.backgroundColor,
      drawer: InfoDrawer(),
      endDrawer: HistoryDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
              Text('Créditos', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              IconButton.outlined(
                icon: const Icon(Icons.book),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => const LibraryScreen(),
                    ),
                  );
                },
              ),
              Text('Biblioteca', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.history),
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
              ),
              Text('Histórico', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          BackgroundWidget(
              image: MyApp.themeHelper.image, credit: MyApp.themeHelper.credit),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (context) => const FormScreen(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lightbulb_circle_outlined, size: 35),
                        Text('Analisar projeto',
                            style: Theme.of(context).textTheme.headlineMedium),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
