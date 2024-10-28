import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('pt')
  ];

  /// No description provided for @question1.
  ///
  /// In pt, this message translates to:
  /// **'Qual a fase atual do desenvolvimento do projeto?'**
  String get question1;

  /// No description provided for @option1_1.
  ///
  /// In pt, this message translates to:
  /// **'Planejamento'**
  String get option1_1;

  /// No description provided for @option1_2.
  ///
  /// In pt, this message translates to:
  /// **'Em andamento'**
  String get option1_2;

  /// No description provided for @option1_3.
  ///
  /// In pt, this message translates to:
  /// **'Concluído'**
  String get option1_3;

  /// No description provided for @question2.
  ///
  /// In pt, this message translates to:
  /// **'O projeto surgiu a partir de uma necessidade real da comunidade, identificada através de um diagnóstico prévio?'**
  String get question2;

  /// No description provided for @option2_1.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Sim, foi realizado um diagnóstico prévio} present{Sim, está sendo realizado um diagnóstico prévio} other{Sim, será realizado um diagnóstico prévio}}'**
  String option2_1(String tense);

  /// No description provided for @option2_2.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Não, não foi realizado um diagnóstico prévio} present{Não, não está sendo realizado um diagnóstico prévio} other{Não será realizado um diagnóstico prévio}}'**
  String option2_2(String tense);

  /// No description provided for @question3.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Com quem foi realizado o diagnóstico prévio?} present{Com quem está sendo realizado o diagnóstico prévio?} other{Com quem será realizado o diagnóstico prévio?}}'**
  String question3(String tense);

  /// No description provided for @option3_1.
  ///
  /// In pt, this message translates to:
  /// **'Alunos'**
  String get option3_1;

  /// No description provided for @option3_2.
  ///
  /// In pt, this message translates to:
  /// **'Professores'**
  String get option3_2;

  /// No description provided for @option3_3.
  ///
  /// In pt, this message translates to:
  /// **'Funcionários (limpeza, cantina, secretaria)'**
  String get option3_3;

  /// No description provided for @option3_4.
  ///
  /// In pt, this message translates to:
  /// **'Gestores (diretoria e pedagogos)'**
  String get option3_4;

  /// No description provided for @option3_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option3_5;

  /// No description provided for @question4.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais métodos foram utilizados para realizar o diagnóstico?} present{Quais métodos são utilizados para realizar o diagnóstico?} other{Quais métodos serão utilizados para realizar o diagnóstico?}}'**
  String question4(String tense);

  /// No description provided for @option4_1.
  ///
  /// In pt, this message translates to:
  /// **'Observações de campo em reuniões comunitárias'**
  String get option4_1;

  /// No description provided for @option4_2.
  ///
  /// In pt, this message translates to:
  /// **'Pesquisas e entrevistas com a comunidade local'**
  String get option4_2;

  /// No description provided for @option4_3.
  ///
  /// In pt, this message translates to:
  /// **'Análise de informações e relatórios existentes'**
  String get option4_3;

  /// No description provided for @option4_4.
  ///
  /// In pt, this message translates to:
  /// **'Consultoria com especialistas'**
  String get option4_4;

  /// No description provided for @option4_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option4_5;

  /// No description provided for @question5.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Qual foi o principal objetivo do diagnóstico?} present{Qual é o principal objetivo do diagnóstico?} other{Qual será o principal objetivo do diagnóstico?}}'**
  String question5(String tense);

  /// No description provided for @option5_1.
  ///
  /// In pt, this message translates to:
  /// **'Identificação de problemas ambientais locais'**
  String get option5_1;

  /// No description provided for @option5_2.
  ///
  /// In pt, this message translates to:
  /// **'Mapeamento de recursos e necessidades da comunidade'**
  String get option5_2;

  /// No description provided for @option5_3.
  ///
  /// In pt, this message translates to:
  /// **'Avaliação das percepções e conhecimentos dos atores locais sobre as mudanças climáticas'**
  String get option5_3;

  /// No description provided for @option5_4.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option5_4;

  /// No description provided for @question6.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Os resultados do diagnóstico foram incorporados no planejamento do projeto?} present{Os resultados do diagnóstico estão sendo incorporados no planejamento do projeto?} other{Os resultados do diagnóstico serão incorporados no planejamento do projeto?}}'**
  String question6(String tense);

  /// No description provided for @option6_1.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Os resultados do diagnóstico guiaram todas as fases do projeto} present{Os resultados do diagnóstico guiam todas as fases do projeto} other{Os resultados do diagnóstico guiarão todas as fases do projeto}}'**
  String option6_1(String tense);

  /// No description provided for @option6_2.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Os resultados do diagnóstico guiaram algumas atividades dentro do projeto} present{Os resultados do diagnóstico guiam algumas atividades dentro do projeto} other{Os resultados do diagnóstico guiarão algumas atividades dentro do projeto}}'**
  String option6_2(String tense);

  /// No description provided for @option6_3.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Os resultados do diagnóstico não foram incorporados no projeto} present{Os resultados do diagnóstico não estão sendo incorporados no projeto} other{Os resultados do diagnóstico não serão incorporados no projeto}}'**
  String option6_3(String tense);

  /// No description provided for @question7.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quem participou do projeto?} present{Quem participa do projeto?} other{Quem participará do projeto?}}'**
  String question7(String tense);

  /// No description provided for @option7_1.
  ///
  /// In pt, this message translates to:
  /// **'Alunos'**
  String get option7_1;

  /// No description provided for @option7_2.
  ///
  /// In pt, this message translates to:
  /// **'Professores'**
  String get option7_2;

  /// No description provided for @option7_3.
  ///
  /// In pt, this message translates to:
  /// **'Funcionários (limpeza cantina secretaria)'**
  String get option7_3;

  /// No description provided for @option7_4.
  ///
  /// In pt, this message translates to:
  /// **'Gestores (diretoria e pedagogos)'**
  String get option7_4;

  /// No description provided for @option7_5.
  ///
  /// In pt, this message translates to:
  /// **'Moradores da comunidade'**
  String get option7_5;

  /// No description provided for @option7_6.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option7_6;

  /// No description provided for @question8.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{O projeto promoveu colaboração entre diferentes setores da sociedade?} present{O projeto promove colaboração entre diferentes setores da sociedade?} other{O projeto promoverá colaboração entre diferentes setores da sociedade?}}'**
  String question8(String tense);

  /// No description provided for @option8_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option8_1;

  /// No description provided for @option8_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option8_2;

  /// No description provided for @question9.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Se sim, quem participou?} present{Se sim, quem participa?} other{Se sim, quem participará?}}'**
  String question9(String tense);

  /// No description provided for @option9_1.
  ///
  /// In pt, this message translates to:
  /// **'Empresas'**
  String get option9_1;

  /// No description provided for @option9_2.
  ///
  /// In pt, this message translates to:
  /// **'Pais e responsáveis'**
  String get option9_2;

  /// No description provided for @option9_3.
  ///
  /// In pt, this message translates to:
  /// **'Comunidade local'**
  String get option9_3;

  /// No description provided for @option9_4.
  ///
  /// In pt, this message translates to:
  /// **'Organizações Não Governamentais (ONGs)'**
  String get option9_4;

  /// No description provided for @option9_5.
  ///
  /// In pt, this message translates to:
  /// **'Instituições de ensino superior'**
  String get option9_5;

  /// No description provided for @option9_6.
  ///
  /// In pt, this message translates to:
  /// **'Empresas privadas'**
  String get option9_6;

  /// No description provided for @option9_7.
  ///
  /// In pt, this message translates to:
  /// **'Órgãos governamentais'**
  String get option9_7;

  /// No description provided for @option9_8.
  ///
  /// In pt, this message translates to:
  /// **'Especialistas (cientistas, ambientalistas, etc_)'**
  String get option9_8;

  /// No description provided for @option9_9.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option9_9;

  /// No description provided for @question10.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{De que maneira foi essa participação?} present{De que maneira é essa participação?} other{De que maneira será essa participação?}}'**
  String question10(String tense);

  /// No description provided for @option10_1.
  ///
  /// In pt, this message translates to:
  /// **'A partir de dicas e auxílio em análises'**
  String get option10_1;

  /// No description provided for @option10_2.
  ///
  /// In pt, this message translates to:
  /// **'Consultas durante o diagnóstico prévio'**
  String get option10_2;

  /// No description provided for @option10_3.
  ///
  /// In pt, this message translates to:
  /// **'Realização de palestras e workshops para formação'**
  String get option10_3;

  /// No description provided for @option10_4.
  ///
  /// In pt, this message translates to:
  /// **'Com apoio logístico e/ou financeiro'**
  String get option10_4;

  /// No description provided for @option10_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option10_5;

  /// No description provided for @question11.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Com relação à Emergência Climática, quais os temas que foram abordados no projeto?} present{Com relação à Emergência Climática, quais os temas que são abordados no projeto?} other{Com relação à Emergência Climática, quais os temas que serão abordados no projeto?}}'**
  String question11(String tense);

  /// No description provided for @option11_1.
  ///
  /// In pt, this message translates to:
  /// **'Causas e consequências'**
  String get option11_1;

  /// No description provided for @option11_2.
  ///
  /// In pt, this message translates to:
  /// **'Formas de enfrentamento'**
  String get option11_2;

  /// No description provided for @option11_3.
  ///
  /// In pt, this message translates to:
  /// **'Políticas públicas sobre mudanças climáticas'**
  String get option11_3;

  /// No description provided for @option11_4.
  ///
  /// In pt, this message translates to:
  /// **'Educação e conscientização ambiental'**
  String get option11_4;

  /// No description provided for @option11_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option11_5;

  /// No description provided for @question12.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais dimensões abaixo você abordou em seu projeto?} present{Quais dimensões abaixo você aborda em seu projeto?} other{Quais dimensões abaixo você abordará em seu projeto?}}'**
  String question12(String tense);

  /// No description provided for @option12_1.
  ///
  /// In pt, this message translates to:
  /// **'Política'**
  String get option12_1;

  /// No description provided for @option12_2.
  ///
  /// In pt, this message translates to:
  /// **'Econômica'**
  String get option12_2;

  /// No description provided for @option12_3.
  ///
  /// In pt, this message translates to:
  /// **'Social'**
  String get option12_3;

  /// No description provided for @option12_4.
  ///
  /// In pt, this message translates to:
  /// **'Cultural'**
  String get option12_4;

  /// No description provided for @option12_5.
  ///
  /// In pt, this message translates to:
  /// **'Ética'**
  String get option12_5;

  /// No description provided for @option12_6.
  ///
  /// In pt, this message translates to:
  /// **'Ecológica/Natural'**
  String get option12_6;

  /// No description provided for @option12_7.
  ///
  /// In pt, this message translates to:
  /// **'do Indivíduo'**
  String get option12_7;

  /// No description provided for @option12_8.
  ///
  /// In pt, this message translates to:
  /// **'Artísticos'**
  String get option12_8;

  /// No description provided for @option12_9.
  ///
  /// In pt, this message translates to:
  /// **'Históricos'**
  String get option12_9;

  /// No description provided for @question13.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos políticos você abordou?} present{Quais aspectos políticos você aborda?} other{Quais aspectos políticos você abordará?}}'**
  String question13(String tense);

  /// No description provided for @option13_1.
  ///
  /// In pt, this message translates to:
  /// **'Políticas públicas ambientais'**
  String get option13_1;

  /// No description provided for @option13_2.
  ///
  /// In pt, this message translates to:
  /// **'Legislação e acordos internacionais sobre mudanças climáticas'**
  String get option13_2;

  /// No description provided for @option13_3.
  ///
  /// In pt, this message translates to:
  /// **'Governança e tomada de decisão'**
  String get option13_3;

  /// No description provided for @question14.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos econômicos você abordou?} present{Quais aspectos econômicos você aborda?} other{Quais aspectos econômicos você abordará?}}'**
  String question14(String tense);

  /// No description provided for @option14_1.
  ///
  /// In pt, this message translates to:
  /// **'Alternativas econômicas em relação ao modelo vigente'**
  String get option14_1;

  /// No description provided for @option14_2.
  ///
  /// In pt, this message translates to:
  /// **'Impactos econômicos das mudanças climáticas'**
  String get option14_2;

  /// No description provided for @option14_3.
  ///
  /// In pt, this message translates to:
  /// **'Práticas econômicas locais e globais'**
  String get option14_3;

  /// No description provided for @option14_4.
  ///
  /// In pt, this message translates to:
  /// **'Modelo econômico vigente'**
  String get option14_4;

  /// No description provided for @question15.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos sociais você abordou?} present{Quais aspectos sociais você aborda?} other{Quais aspectos sociais você abordará?}}'**
  String question15(String tense);

  /// No description provided for @option15_1.
  ///
  /// In pt, this message translates to:
  /// **'Equidade'**
  String get option15_1;

  /// No description provided for @option15_2.
  ///
  /// In pt, this message translates to:
  /// **'Vulnerabilidade social'**
  String get option15_2;

  /// No description provided for @option15_3.
  ///
  /// In pt, this message translates to:
  /// **'Ações comunitárias e engajamento social'**
  String get option15_3;

  /// No description provided for @question16.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos culturais você abordou?} present{Quais aspectos culturais você aborda?} other{Quais aspectos culturais você abordará?}}'**
  String question16(String tense);

  /// No description provided for @option16_1.
  ///
  /// In pt, this message translates to:
  /// **'Valorização da diversidade cultural local'**
  String get option16_1;

  /// No description provided for @option16_2.
  ///
  /// In pt, this message translates to:
  /// **'Diálogo entre diferentes culturas'**
  String get option16_2;

  /// No description provided for @option16_3.
  ///
  /// In pt, this message translates to:
  /// **'Práticas culturais locais e sua relação com o ambiente'**
  String get option16_3;

  /// No description provided for @question17.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos éticos você abordou?} present{Quais aspectos éticos você aborda?} other{Quais aspectos éticos você abordará?}}'**
  String question17(String tense);

  /// No description provided for @option17_1.
  ///
  /// In pt, this message translates to:
  /// **'Ética ambiental e responsabilidade ecológica'**
  String get option17_1;

  /// No description provided for @option17_2.
  ///
  /// In pt, this message translates to:
  /// **'Dilemas entre atitudes individuais e sociais'**
  String get option17_2;

  /// No description provided for @question18.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos naturais você abordou?} present{Quais aspectos naturais você aborda?} other{Quais aspectos naturais você abordará?}}'**
  String question18(String tense);

  /// No description provided for @option18_1.
  ///
  /// In pt, this message translates to:
  /// **'Biodiversidade'**
  String get option18_1;

  /// No description provided for @option18_2.
  ///
  /// In pt, this message translates to:
  /// **'Vegetação'**
  String get option18_2;

  /// No description provided for @option18_3.
  ///
  /// In pt, this message translates to:
  /// **'Água'**
  String get option18_3;

  /// No description provided for @option18_4.
  ///
  /// In pt, this message translates to:
  /// **'Solo'**
  String get option18_4;

  /// No description provided for @option18_5.
  ///
  /// In pt, this message translates to:
  /// **'Ar'**
  String get option18_5;

  /// No description provided for @option18_6.
  ///
  /// In pt, this message translates to:
  /// **'Desastres ambientais'**
  String get option18_6;

  /// No description provided for @question19.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos do indivíduo você abordou?} present{Quais aspectos do indivíduo você aborda?} other{Quais aspectos do indivíduo você abordará?}}'**
  String question19(String tense);

  /// No description provided for @option19_1.
  ///
  /// In pt, this message translates to:
  /// **'Autoconhecimento/autocrítica'**
  String get option19_1;

  /// No description provided for @option19_2.
  ///
  /// In pt, this message translates to:
  /// **'Mudança de comportamento'**
  String get option19_2;

  /// No description provided for @option19_3.
  ///
  /// In pt, this message translates to:
  /// **'Valorização das experiências individuais'**
  String get option19_3;

  /// No description provided for @option19_4.
  ///
  /// In pt, this message translates to:
  /// **'Saúde física'**
  String get option19_4;

  /// No description provided for @option19_5.
  ///
  /// In pt, this message translates to:
  /// **'Saúde mental'**
  String get option19_5;

  /// No description provided for @question20.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos artísticos você abordou?} present{Quais aspectos artísticos você aborda?} other{Quais aspectos artísticos você abordará?}}'**
  String question20(String tense);

  /// No description provided for @option20_1.
  ///
  /// In pt, this message translates to:
  /// **'Arte para expressar e comunicar temas ambientais'**
  String get option20_1;

  /// No description provided for @option20_2.
  ///
  /// In pt, this message translates to:
  /// **'Projetos colaborativos com artistas locais'**
  String get option20_2;

  /// No description provided for @option20_3.
  ///
  /// In pt, this message translates to:
  /// **'Produção artística'**
  String get option20_3;

  /// No description provided for @question21.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais aspectos históricos você abordou?} present{Quais aspectos históricos você aborda?} other{Quais aspectos históricos você abordará?}}'**
  String question21(String tense);

  /// No description provided for @option21_1.
  ///
  /// In pt, this message translates to:
  /// **'Contextualização histórica das mudanças climáticas'**
  String get option21_1;

  /// No description provided for @option21_2.
  ///
  /// In pt, this message translates to:
  /// **'Eventos históricos relacionados ao ambiente'**
  String get option21_2;

  /// No description provided for @option21_3.
  ///
  /// In pt, this message translates to:
  /// **'História local'**
  String get option21_3;

  /// No description provided for @question22.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais valores foram trabalhados durante o desenvolvimento do projeto?} present{Quais valores são trabalhados durante o desenvolvimento do projeto?} other{Quais valores serão trabalhados durante o desenvolvimento do projeto?}}'**
  String question22(String tense);

  /// No description provided for @option22_1.
  ///
  /// In pt, this message translates to:
  /// **'Respeito ao meio ambiente'**
  String get option22_1;

  /// No description provided for @option22_2.
  ///
  /// In pt, this message translates to:
  /// **'Solidariedade e cooperação'**
  String get option22_2;

  /// No description provided for @option22_3.
  ///
  /// In pt, this message translates to:
  /// **'Justiça social e equidade'**
  String get option22_3;

  /// No description provided for @option22_4.
  ///
  /// In pt, this message translates to:
  /// **'Sustentabilidade'**
  String get option22_4;

  /// No description provided for @option22_5.
  ///
  /// In pt, this message translates to:
  /// **'Consumo consciente'**
  String get option22_5;

  /// No description provided for @option22_6.
  ///
  /// In pt, this message translates to:
  /// **'Responsabilidade'**
  String get option22_6;

  /// No description provided for @option22_7.
  ///
  /// In pt, this message translates to:
  /// **'Cidadania'**
  String get option22_7;

  /// No description provided for @option22_8.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option22_8;

  /// No description provided for @option22_9.
  ///
  /// In pt, this message translates to:
  /// **'Não pensei nisso'**
  String get option22_9;

  /// No description provided for @question23.
  ///
  /// In pt, this message translates to:
  /// **'Quais emoções emergiram entre os participantes durante a realização do projeto com relação à temática Emergência Climática?'**
  String get question23;

  /// No description provided for @option23_1.
  ///
  /// In pt, this message translates to:
  /// **'Ansiedade'**
  String get option23_1;

  /// No description provided for @option23_2.
  ///
  /// In pt, this message translates to:
  /// **'Medo'**
  String get option23_2;

  /// No description provided for @option23_3.
  ///
  /// In pt, this message translates to:
  /// **'Frustração'**
  String get option23_3;

  /// No description provided for @option23_4.
  ///
  /// In pt, this message translates to:
  /// **'Esperança'**
  String get option23_4;

  /// No description provided for @option23_5.
  ///
  /// In pt, this message translates to:
  /// **'Empatia'**
  String get option23_5;

  /// No description provided for @option23_6.
  ///
  /// In pt, this message translates to:
  /// **'Dúvida'**
  String get option23_6;

  /// No description provided for @option23_7.
  ///
  /// In pt, this message translates to:
  /// **'Surpresa'**
  String get option23_7;

  /// No description provided for @option23_8.
  ///
  /// In pt, this message translates to:
  /// **'Interesse'**
  String get option23_8;

  /// No description provided for @option23_9.
  ///
  /// In pt, this message translates to:
  /// **'Alegria'**
  String get option23_9;

  /// No description provided for @option23_10.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option23_10;

  /// No description provided for @option23_11.
  ///
  /// In pt, this message translates to:
  /// **'Não pensei nisso'**
  String get option23_11;

  /// No description provided for @option23_12.
  ///
  /// In pt, this message translates to:
  /// **'Não é possível responder pois o projeto ainda está em andamento'**
  String get option23_12;

  /// No description provided for @question24.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{O projeto buscou incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?} present{O projeto busca incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?} other{O projeto buscará incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?}}'**
  String question24(String tense);

  /// No description provided for @option24_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option24_1;

  /// No description provided for @option24_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option24_2;

  /// No description provided for @question25.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{De que maneira o projeto incentivou essa conexão?} present{De que maneira o projeto incentiva essa conexão?} other{De que maneira o projeto incentivará essa conexão?}}'**
  String question25(String tense);

  /// No description provided for @option25_1.
  ///
  /// In pt, this message translates to:
  /// **'Experiências diretas na natureza'**
  String get option25_1;

  /// No description provided for @option25_2.
  ///
  /// In pt, this message translates to:
  /// **'Narrativas e histórias inspiradoras'**
  String get option25_2;

  /// No description provided for @option25_3.
  ///
  /// In pt, this message translates to:
  /// **'Atividades de voluntariado e serviço comunitário'**
  String get option25_3;

  /// No description provided for @option25_4.
  ///
  /// In pt, this message translates to:
  /// **'Reflexões pessoais e compartilhamento de experiências emocionais'**
  String get option25_4;

  /// No description provided for @option25_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option25_5;

  /// No description provided for @question26.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Quais instrumentos foram utilizados para abordar a temática?} present{Quais instrumentos estão sendo utilizados para abordar a temática?} other{Quais instrumentos serão utilizados para abordar a temática?}}'**
  String question26(String tense);

  /// No description provided for @option26_1.
  ///
  /// In pt, this message translates to:
  /// **'Materiais didáticos (livros, artigos, vídeos)'**
  String get option26_1;

  /// No description provided for @option26_2.
  ///
  /// In pt, this message translates to:
  /// **'Atividades práticas (experimentos, projetos de campo)'**
  String get option26_2;

  /// No description provided for @option26_3.
  ///
  /// In pt, this message translates to:
  /// **'Tecnologias digitais (software, simulações, aplicativos)'**
  String get option26_3;

  /// No description provided for @option26_4.
  ///
  /// In pt, this message translates to:
  /// **'Colaborações com especialistas e instituições'**
  String get option26_4;

  /// No description provided for @option26_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option26_5;

  /// No description provided for @question27.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{De que maneira ocorreram as atividades desenvolvidas no projeto?} present{De que maneira estão ocorrendo as atividades desenvolvidas no projeto?} other{De que maneira ocorrerão as atividades desenvolvidas no projeto?}}'**
  String question27(String tense);

  /// No description provided for @option27_1.
  ///
  /// In pt, this message translates to:
  /// **'Debate e discussão aberta'**
  String get option27_1;

  /// No description provided for @option27_2.
  ///
  /// In pt, this message translates to:
  /// **'Análise de informações e fontes diversas'**
  String get option27_2;

  /// No description provided for @option27_3.
  ///
  /// In pt, this message translates to:
  /// **'Reflexão individual e autoavaliação'**
  String get option27_3;

  /// No description provided for @option27_4.
  ///
  /// In pt, this message translates to:
  /// **'Realização de oficinas e/ou atividades previamente planejadas'**
  String get option27_4;

  /// No description provided for @option27_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option27_5;

  /// No description provided for @question28.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Indique qual/quais áreas do conhecimento foram contempladas durante a realização do projeto:} present{Indique qual/quais áreas do conhecimento estão sendo contempladas durante a realização do projeto:} other{Indique qual/quais áreas do conhecimento serão contempladas durante a realização do projeto:}}'**
  String question28(String tense);

  /// No description provided for @option28_1.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Exatas'**
  String get option28_1;

  /// No description provided for @option28_2.
  ///
  /// In pt, this message translates to:
  /// **'Ciências da Terra'**
  String get option28_2;

  /// No description provided for @option28_3.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Biológicas'**
  String get option28_3;

  /// No description provided for @option28_4.
  ///
  /// In pt, this message translates to:
  /// **'Engenharia/Tecnologia'**
  String get option28_4;

  /// No description provided for @option28_5.
  ///
  /// In pt, this message translates to:
  /// **'Ciências da Saúde'**
  String get option28_5;

  /// No description provided for @option28_6.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Agrárias'**
  String get option28_6;

  /// No description provided for @option28_7.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Sociais'**
  String get option28_7;

  /// No description provided for @option28_8.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Humanas'**
  String get option28_8;

  /// No description provided for @option28_9.
  ///
  /// In pt, this message translates to:
  /// **'Letras'**
  String get option28_9;

  /// No description provided for @option28_10.
  ///
  /// In pt, this message translates to:
  /// **'Artes'**
  String get option28_10;

  /// No description provided for @question29.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{De que maneira ocorreu a integração entre as áreas?} present{De que maneira ocorre a integração entre as áreas?} other{De que maneira ocorrerá a integração entre as áreas?}}'**
  String question29(String tense);

  /// No description provided for @option29_1.
  ///
  /// In pt, this message translates to:
  /// **'Discussões teóricas'**
  String get option29_1;

  /// No description provided for @option29_2.
  ///
  /// In pt, this message translates to:
  /// **'Exemplos práticos'**
  String get option29_2;

  /// No description provided for @option29_3.
  ///
  /// In pt, this message translates to:
  /// **'Participação de outros profissionais'**
  String get option29_3;

  /// No description provided for @question30.
  ///
  /// In pt, this message translates to:
  /// **'Selecione as dificuldades encontradas ao longo do projeto:'**
  String get question30;

  /// No description provided for @option30_1.
  ///
  /// In pt, this message translates to:
  /// **'Conteúdo'**
  String get option30_1;

  /// No description provided for @option30_2.
  ///
  /// In pt, this message translates to:
  /// **'Integração do conteúdo ao currículo'**
  String get option30_2;

  /// No description provided for @option30_3.
  ///
  /// In pt, this message translates to:
  /// **'Financeiro'**
  String get option30_3;

  /// No description provided for @option30_4.
  ///
  /// In pt, this message translates to:
  /// **'Logístico'**
  String get option30_4;

  /// No description provided for @option30_5.
  ///
  /// In pt, this message translates to:
  /// **'Administrativo'**
  String get option30_5;

  /// No description provided for @option30_6.
  ///
  /// In pt, this message translates to:
  /// **'Engajamento e participação'**
  String get option30_6;

  /// No description provided for @option30_7.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option30_7;

  /// No description provided for @option30_8.
  ///
  /// In pt, this message translates to:
  /// **'Não houveram dificuldades na realização do projeto'**
  String get option30_8;

  /// No description provided for @option30_9.
  ///
  /// In pt, this message translates to:
  /// **'Não é possível responder pois o projeto ainda está em andamento'**
  String get option30_9;

  /// No description provided for @question31.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Foram realizadas avaliações durante o andamento do projeto?} present{São realizadas avaliações durante o andamento do projeto?} other{Serão realizadas avaliações durante o andamento do projeto?}}'**
  String question31(String tense);

  /// No description provided for @option31_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option31_1;

  /// No description provided for @option31_2.
  ///
  /// In pt, this message translates to:
  /// **'Não apenas no final do projeto'**
  String get option31_2;

  /// No description provided for @question32.
  ///
  /// In pt, this message translates to:
  /// **'{tense, select, past{Houve um momento destinado para a autoavaliação dos participantes?} present{Há um momento destinado para a autoavaliação dos participantes?} other{Haverá um momento destinado para a autoavaliação dos participantes?}}'**
  String question32(String tense);

  /// No description provided for @option32_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option32_1;

  /// No description provided for @option32_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option32_2;

  /// No description provided for @question33.
  ///
  /// In pt, this message translates to:
  /// **'Durante o preenchimento deste formulário, você teve novas ideias ou se deparou com questões que não havia imaginado para o seu projeto?'**
  String get question33;

  /// No description provided for @option33_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option33_1;

  /// No description provided for @option33_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option33_2;

  /// No description provided for @question34.
  ///
  /// In pt, this message translates to:
  /// **'Você gostaria de compartilhar as respostas de seu questionário com os autores de forma a auxiliar nas pesquisas de melhoria do aplicativo?'**
  String get question34;

  /// No description provided for @option34_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option34_1;

  /// No description provided for @option34_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option34_2;

  /// No description provided for @question35.
  ///
  /// In pt, this message translates to:
  /// **'OPCIONAL: Deixe abaixo seus comentários, críticas, sugestões, elogios, sobre o questionário.'**
  String get question35;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'pt': return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
