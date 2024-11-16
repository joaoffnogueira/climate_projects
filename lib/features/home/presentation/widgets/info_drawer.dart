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
            applicationIcon: Column(
              children: [
                Text(
                  'Baseado na pesquisa de Fernanda Gurgel Matakas, sob orientação das professoras Adriana Massaê Kataoka e Ana Lucia Suriani Affonso,',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Tooltip(
                      message:
                          'Laboratório de Educação Ambiental e Ecologia - UNICENTRO',
                      child: Image.asset(
                        'assets/lab.png',
                        width: size.width * 0.25,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    Tooltip(
                      message: 'Núcleo de Educação Ambiental - NEA/UNICENTRO',
                      child: Image.asset(
                        'assets/nea.png',
                        width: size.width * 0.25,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Tooltip(
                      message: 'Global Youth Climate Pact',
                      child: Image.asset(
                        'assets/gycp.png',
                        width: size.width * 0.25,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    Tooltip(
                      message:
                          'Novos Arranjos de Pesquisa e Inovação - Emergência Climática',
                      child: Image.asset(
                        'assets/napi.png',
                        width: size.width * 0.25,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                ),
                Tooltip(
                  message: 'Universidade Estadual do Centro-Oeste - UNICENTRO',
                  child: Image.asset(
                    'assets/unicentro.png',
                    width: size.width * 0.25,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ],
            ),
            applicationLegalese:
                'Desenvolvido por João Fernando Ferrari Nogueira (joaonogueira.dev)',
          ),
        ),
      ),
    );
  }
}
