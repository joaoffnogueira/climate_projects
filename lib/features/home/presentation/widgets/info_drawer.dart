import 'package:flutter/material.dart';

class InfoDrawer extends StatelessWidget {
  const InfoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Material(
      child: SingleChildScrollView(
        child: SizedBox(
          width: size.width * 0.8,
          height: size.height,
          child: LicensePage(
            applicationName: 'EmergeClima',
            applicationVersion: 'Versão atual: 1.1.5+7',
            applicationIcon: Text(
              'Baseado na pesquisa de...',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
            applicationLegalese: 'Desenvolvido por joaonogueira.dev',
          ),
        ),
      ),
    );
  }
}
