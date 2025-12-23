import 'package:flutter/material.dart';

class InfoDrawer extends StatelessWidget {
  const InfoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Material(
      child: SizedBox(
        width: size.width * 0.9,
        height: size.height,
        child: LicensePage(
          applicationName: 'EmergeClima',
          applicationVersion: 'Versão atual: 2.1.0+15',
          applicationIcon: Column(
            children: [
              Text(
                'Este aplicativo foi construído para que professores possam refletir sobre o processo de planejamento e execução de um projeto que aborde o tema da Emergência Climática, convidando-os a responder um questionário investigativo. Além disso, disponibilizamos uma biblioteca de conteúdo com diferentes alternativas de reflexão para auxiliar no aprofundamento de seus conhecimentos referentes à Emergência Climática e às etapas para o planejamento de projetos pautados na Educação Ambiental. Dessa forma, o aplicativo EmergeClima se constitui como uma estratégia de planejamento de projetos e aulas.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
              Text(
                'Baseado na pesquisa de Fernanda Gurgel Matakas, sob orientação das professoras Adriana Massaê Kataoka e Ana Lucia Suriani Affonso.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
              Text(
                'Imagens de fundo: ArtistsForClimate.org',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.left,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tooltip(
                    message:
                        'Laboratório de Educação Ambiental e Ecologia - UNICENTRO',
                    child: Image.asset(
                      'assets/lab.png',
                      width: size.width * 0.20,
                      filterQuality: FilterQuality.low,
                      cacheWidth:
                          (size.width * 0.20 * devicePixelRatio).round(),
                    ),
                  ),
                  Tooltip(
                    message: 'Núcleo de Educação Ambiental - NEA/UNICENTRO',
                    child: Image.asset(
                      'assets/nea.png',
                      width: size.width * 0.20,
                      filterQuality: FilterQuality.low,
                      cacheWidth:
                          (size.width * 0.20 * devicePixelRatio).round(),
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
                      filterQuality: FilterQuality.low,
                      cacheWidth:
                          (size.width * 0.25 * devicePixelRatio).round(),
                    ),
                  ),
                  Tooltip(
                    message:
                        'Novos Arranjos de Pesquisa e Inovação - Emergência Climática',
                    child: Image.asset(
                      'assets/napi.png',
                      width: size.width * 0.25,
                      filterQuality: FilterQuality.low,
                      cacheWidth:
                          (size.width * 0.25 * devicePixelRatio).round(),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tooltip(
                    message:
                        'Programa de Pós-Graduação em Ensino de Ciências Naturais e Matemática - PPGEN',
                    child: Image.asset(
                      'assets/ppgen.png',
                      width: size.width * 0.15,
                      filterQuality: FilterQuality.low,
                      cacheWidth:
                          (size.width * 0.15 * devicePixelRatio).round(),
                    ),
                  ),
                  Tooltip(
                    message:
                        'Universidade Estadual do Centro-Oeste - UNICENTRO',
                    child: Image.asset(
                      'assets/unicentro.png',
                      width: size.width * 0.20,
                      filterQuality: FilterQuality.low,
                      cacheWidth:
                          (size.width * 0.20 * devicePixelRatio).round(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          applicationLegalese:
              'Desenvolvido por João Fernando Ferrari Nogueira (joaonogueira.dev)',
        ),
      ),
    );
  }
}
