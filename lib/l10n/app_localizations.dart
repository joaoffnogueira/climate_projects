import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_pt.dart';

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
  /// **'O projeto surgiu a partir de uma necessidade real da comunidade identificada através de um diagnóstico prévio?'**
  String get question2;

  /// No description provided for @option2_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim foi/será realizado um diagnóstico prévio'**
  String get option2_1;

  /// No description provided for @option2_2.
  ///
  /// In pt, this message translates to:
  /// **'Não não foi/será realizado um diagnóstico prévio'**
  String get option2_2;

  /// No description provided for @question3.
  ///
  /// In pt, this message translates to:
  /// **'Com quem foi/será realizado o diagnóstico prévio?'**
  String get question3;

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
  /// **'Funcionários (limpeza cantina secretaria)'**
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
  /// **'Quais métodos foram/serão utilizados para realizar o diagnóstico?'**
  String get question4;

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
  /// **'Qual foi/será o principal foco do diagnóstico?'**
  String get question5;

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
  /// **'Os resultados do diagnóstico foram/serão incorporados no planejamento do projeto?'**
  String get question6;

  /// No description provided for @option6_1.
  ///
  /// In pt, this message translates to:
  /// **'Os resultados do diagnóstico guiaram/guiarão todas as fases do projeto'**
  String get option6_1;

  /// No description provided for @option6_2.
  ///
  /// In pt, this message translates to:
  /// **'Os resultados do diagnóstico guiaram/guiarão algumas atividades dentro do projeto'**
  String get option6_2;

  /// No description provided for @option6_3.
  ///
  /// In pt, this message translates to:
  /// **'Os resultados do diagnóstico não foram/serão incorporados no projeto'**
  String get option6_3;

  /// No description provided for @question7.
  ///
  /// In pt, this message translates to:
  /// **'Os participantes do projeto possuem algum envolvimento prévio com a temática?'**
  String get question7;

  /// No description provided for @option7_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option7_1;

  /// No description provided for @option7_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option7_2;

  /// No description provided for @question8.
  ///
  /// In pt, this message translates to:
  /// **'Quem participará do projeto?'**
  String get question8;

  /// No description provided for @option8_1.
  ///
  /// In pt, this message translates to:
  /// **'Alunos'**
  String get option8_1;

  /// No description provided for @option8_2.
  ///
  /// In pt, this message translates to:
  /// **'Professores'**
  String get option8_2;

  /// No description provided for @option8_3.
  ///
  /// In pt, this message translates to:
  /// **'Funcionários (limpeza cantina secretaria)'**
  String get option8_3;

  /// No description provided for @option8_4.
  ///
  /// In pt, this message translates to:
  /// **'Gestores (diretoria e pedagogos)'**
  String get option8_4;

  /// No description provided for @option8_5.
  ///
  /// In pt, this message translates to:
  /// **'Moradores da comunidade'**
  String get option8_5;

  /// No description provided for @option8_6.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option8_6;

  /// No description provided for @question9.
  ///
  /// In pt, this message translates to:
  /// **'O projeto promoveu/promoverá colaboração entre diferentes setores da sociedade?'**
  String get question9;

  /// No description provided for @option9_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option9_1;

  /// No description provided for @option9_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option9_2;

  /// No description provided for @question10.
  ///
  /// In pt, this message translates to:
  /// **'Se sim, quem participou?'**
  String get question10;

  /// No description provided for @option10_1.
  ///
  /// In pt, this message translates to:
  /// **'Empresas'**
  String get option10_1;

  /// No description provided for @option10_2.
  ///
  /// In pt, this message translates to:
  /// **'Pais e responsáveis'**
  String get option10_2;

  /// No description provided for @option10_3.
  ///
  /// In pt, this message translates to:
  /// **'Comunidade local'**
  String get option10_3;

  /// No description provided for @option10_4.
  ///
  /// In pt, this message translates to:
  /// **'Organizações Não Governamentais (ONGs)'**
  String get option10_4;

  /// No description provided for @option10_5.
  ///
  /// In pt, this message translates to:
  /// **'Instituições de ensino superior'**
  String get option10_5;

  /// No description provided for @option10_6.
  ///
  /// In pt, this message translates to:
  /// **'Empresas privadas'**
  String get option10_6;

  /// No description provided for @option10_7.
  ///
  /// In pt, this message translates to:
  /// **'Órgãos governamentais'**
  String get option10_7;

  /// No description provided for @option10_8.
  ///
  /// In pt, this message translates to:
  /// **'Especialistas (cientistas, ambientalistas, etc_)'**
  String get option10_8;

  /// No description provided for @option10_9.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option10_9;

  /// No description provided for @question11.
  ///
  /// In pt, this message translates to:
  /// **'Em que momento se deu essa colaboração?'**
  String get question11;

  /// No description provided for @option11_1.
  ///
  /// In pt, this message translates to:
  /// **'Em todas as etapas'**
  String get option11_1;

  /// No description provided for @option11_2.
  ///
  /// In pt, this message translates to:
  /// **'Em momentos específicos'**
  String get option11_2;

  /// No description provided for @question12.
  ///
  /// In pt, this message translates to:
  /// **'De que maneira foi/será essa participação?'**
  String get question12;

  /// No description provided for @option12_1.
  ///
  /// In pt, this message translates to:
  /// **'A partir de dicas e auxílio em análises'**
  String get option12_1;

  /// No description provided for @option12_2.
  ///
  /// In pt, this message translates to:
  /// **'Consultas durante o diagnóstico prévio'**
  String get option12_2;

  /// No description provided for @option12_3.
  ///
  /// In pt, this message translates to:
  /// **'Realização de palestras e workshops para formação'**
  String get option12_3;

  /// No description provided for @option12_4.
  ///
  /// In pt, this message translates to:
  /// **'Com apoio logístico e/ou financeiro'**
  String get option12_4;

  /// No description provided for @option12_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option12_5;

  /// No description provided for @question13.
  ///
  /// In pt, this message translates to:
  /// **'Houve alguma dificuldade durante a integração dos setores?'**
  String get question13;

  /// No description provided for @option13_1.
  ///
  /// In pt, this message translates to:
  /// **'Não houve dificuldade'**
  String get option13_1;

  /// No description provided for @option13_2.
  ///
  /// In pt, this message translates to:
  /// **'Sim houve dificuldade'**
  String get option13_2;

  /// No description provided for @question14.
  ///
  /// In pt, this message translates to:
  /// **'Se sim, quais foram as dificuldades encontradas na integração de diferentes setores?'**
  String get question14;

  /// No description provided for @option14_1.
  ///
  /// In pt, this message translates to:
  /// **'Falta de tempo e disponibilidade'**
  String get option14_1;

  /// No description provided for @option14_2.
  ///
  /// In pt, this message translates to:
  /// **'Dificuldade de comunicação'**
  String get option14_2;

  /// No description provided for @option14_3.
  ///
  /// In pt, this message translates to:
  /// **'Diferenças de interesse e objetivos'**
  String get option14_3;

  /// No description provided for @option14_4.
  ///
  /// In pt, this message translates to:
  /// **'Limitação de recursos financeiros'**
  String get option14_4;

  /// No description provided for @option14_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option14_5;

  /// No description provided for @question15.
  ///
  /// In pt, this message translates to:
  /// **'Com relação à Emergência Climática, quais os temas que foram/serão abordados no projeto?'**
  String get question15;

  /// No description provided for @option15_1.
  ///
  /// In pt, this message translates to:
  /// **'Causas e consequências'**
  String get option15_1;

  /// No description provided for @option15_2.
  ///
  /// In pt, this message translates to:
  /// **'Formas de enfrentamento'**
  String get option15_2;

  /// No description provided for @option15_3.
  ///
  /// In pt, this message translates to:
  /// **'Políticas públicas sobre mudanças climáticas'**
  String get option15_3;

  /// No description provided for @option15_4.
  ///
  /// In pt, this message translates to:
  /// **'Educação e conscientização ambiental'**
  String get option15_4;

  /// No description provided for @option15_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option15_5;

  /// No description provided for @question16.
  ///
  /// In pt, this message translates to:
  /// **'Quais dimensões abaixo você abordou/abordará em seu projeto?'**
  String get question16;

  /// No description provided for @option16_1.
  ///
  /// In pt, this message translates to:
  /// **'Política'**
  String get option16_1;

  /// No description provided for @option16_2.
  ///
  /// In pt, this message translates to:
  /// **'Econômica'**
  String get option16_2;

  /// No description provided for @option16_3.
  ///
  /// In pt, this message translates to:
  /// **'Social'**
  String get option16_3;

  /// No description provided for @option16_4.
  ///
  /// In pt, this message translates to:
  /// **'Cultural'**
  String get option16_4;

  /// No description provided for @option16_5.
  ///
  /// In pt, this message translates to:
  /// **'Ética'**
  String get option16_5;

  /// No description provided for @option16_6.
  ///
  /// In pt, this message translates to:
  /// **'Ecológica/Natural'**
  String get option16_6;

  /// No description provided for @option16_7.
  ///
  /// In pt, this message translates to:
  /// **'do Indivíduo'**
  String get option16_7;

  /// No description provided for @option16_8.
  ///
  /// In pt, this message translates to:
  /// **'Artísticos'**
  String get option16_8;

  /// No description provided for @option16_9.
  ///
  /// In pt, this message translates to:
  /// **'Históricos'**
  String get option16_9;

  /// No description provided for @question17.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos políticos você abordou/abordará?'**
  String get question17;

  /// No description provided for @option17_1.
  ///
  /// In pt, this message translates to:
  /// **'Políticas públicas ambientais'**
  String get option17_1;

  /// No description provided for @option17_2.
  ///
  /// In pt, this message translates to:
  /// **'Legislação e acordos internacionais sobre mudanças climáticas'**
  String get option17_2;

  /// No description provided for @option17_3.
  ///
  /// In pt, this message translates to:
  /// **'Governança e tomada de decisão'**
  String get option17_3;

  /// No description provided for @question18.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos econômicos você abordou/abordará?'**
  String get question18;

  /// No description provided for @option18_1.
  ///
  /// In pt, this message translates to:
  /// **'Alternativas econômicas em relação ao modelo vigente'**
  String get option18_1;

  /// No description provided for @option18_2.
  ///
  /// In pt, this message translates to:
  /// **'Impactos econômicos das mudanças climáticas'**
  String get option18_2;

  /// No description provided for @option18_3.
  ///
  /// In pt, this message translates to:
  /// **'Práticas econômicas locais e globais'**
  String get option18_3;

  /// No description provided for @option18_4.
  ///
  /// In pt, this message translates to:
  /// **'Modelo econômico vigente'**
  String get option18_4;

  /// No description provided for @question19.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos sociais você abordou/abordará?'**
  String get question19;

  /// No description provided for @option19_1.
  ///
  /// In pt, this message translates to:
  /// **'Equidade'**
  String get option19_1;

  /// No description provided for @option19_2.
  ///
  /// In pt, this message translates to:
  /// **'Vulnerabilidade social'**
  String get option19_2;

  /// No description provided for @option19_3.
  ///
  /// In pt, this message translates to:
  /// **'Ações comunitárias e engajamento social'**
  String get option19_3;

  /// No description provided for @question20.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos culturais você abordou/abordará?'**
  String get question20;

  /// No description provided for @option20_1.
  ///
  /// In pt, this message translates to:
  /// **'Valorização da diversidade cultural local'**
  String get option20_1;

  /// No description provided for @option20_2.
  ///
  /// In pt, this message translates to:
  /// **'Diálogo entre diferentes culturas'**
  String get option20_2;

  /// No description provided for @option20_3.
  ///
  /// In pt, this message translates to:
  /// **'Práticas culturais locais e sua relação com o ambiente'**
  String get option20_3;

  /// No description provided for @question21.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos éticos você abordou/abordará?'**
  String get question21;

  /// No description provided for @option21_1.
  ///
  /// In pt, this message translates to:
  /// **'Ética ambiental e responsabilidade ecológica'**
  String get option21_1;

  /// No description provided for @option21_2.
  ///
  /// In pt, this message translates to:
  /// **'Dilemas entre atitudes individuais e sociais'**
  String get option21_2;

  /// No description provided for @question22.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos naturais você considera importante de serem abordados em um projeto com essa temática?'**
  String get question22;

  /// No description provided for @option22_1.
  ///
  /// In pt, this message translates to:
  /// **'Biodiversidade'**
  String get option22_1;

  /// No description provided for @option22_2.
  ///
  /// In pt, this message translates to:
  /// **'Vegetação'**
  String get option22_2;

  /// No description provided for @option22_3.
  ///
  /// In pt, this message translates to:
  /// **'Água'**
  String get option22_3;

  /// No description provided for @option22_4.
  ///
  /// In pt, this message translates to:
  /// **'Solo'**
  String get option22_4;

  /// No description provided for @option22_5.
  ///
  /// In pt, this message translates to:
  /// **'Ar'**
  String get option22_5;

  /// No description provided for @option22_6.
  ///
  /// In pt, this message translates to:
  /// **'Desastres ambientais'**
  String get option22_6;

  /// No description provided for @question23.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos do indivíduo você abordou/abordará?'**
  String get question23;

  /// No description provided for @option23_1.
  ///
  /// In pt, this message translates to:
  /// **'Autoconhecimento/autocrítica'**
  String get option23_1;

  /// No description provided for @option23_2.
  ///
  /// In pt, this message translates to:
  /// **'Mudança de comportamento'**
  String get option23_2;

  /// No description provided for @option23_3.
  ///
  /// In pt, this message translates to:
  /// **'Valorização das experiências individuais'**
  String get option23_3;

  /// No description provided for @option23_4.
  ///
  /// In pt, this message translates to:
  /// **'Saúde física'**
  String get option23_4;

  /// No description provided for @option23_5.
  ///
  /// In pt, this message translates to:
  /// **'Saúde mental'**
  String get option23_5;

  /// No description provided for @question24.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos artísticos você abordou/abordará?'**
  String get question24;

  /// No description provided for @option24_1.
  ///
  /// In pt, this message translates to:
  /// **'Arte para expressar e comunicar temas ambientais'**
  String get option24_1;

  /// No description provided for @option24_2.
  ///
  /// In pt, this message translates to:
  /// **'Projetos colaborativos com artistas locais'**
  String get option24_2;

  /// No description provided for @option24_3.
  ///
  /// In pt, this message translates to:
  /// **'Produção artística'**
  String get option24_3;

  /// No description provided for @question25.
  ///
  /// In pt, this message translates to:
  /// **'Quais aspectos históricos você abordou/abordará?'**
  String get question25;

  /// No description provided for @option25_1.
  ///
  /// In pt, this message translates to:
  /// **'Contextualização histórica das mudanças climáticas'**
  String get option25_1;

  /// No description provided for @option25_2.
  ///
  /// In pt, this message translates to:
  /// **'Eventos históricos relacionados ao ambiente'**
  String get option25_2;

  /// No description provided for @option25_3.
  ///
  /// In pt, this message translates to:
  /// **'História local'**
  String get option25_3;

  /// No description provided for @question26.
  ///
  /// In pt, this message translates to:
  /// **'Quais valores foram trabalhados durante o desenvolvimento do projeto?'**
  String get question26;

  /// No description provided for @option26_1.
  ///
  /// In pt, this message translates to:
  /// **'Respeito ao meio ambiente'**
  String get option26_1;

  /// No description provided for @option26_2.
  ///
  /// In pt, this message translates to:
  /// **'Solidariedade e cooperação'**
  String get option26_2;

  /// No description provided for @option26_3.
  ///
  /// In pt, this message translates to:
  /// **'Justiça social e equidade'**
  String get option26_3;

  /// No description provided for @option26_4.
  ///
  /// In pt, this message translates to:
  /// **'Sustentabilidade'**
  String get option26_4;

  /// No description provided for @option26_5.
  ///
  /// In pt, this message translates to:
  /// **'Consumo consciente'**
  String get option26_5;

  /// No description provided for @option26_6.
  ///
  /// In pt, this message translates to:
  /// **'Responsabilidade'**
  String get option26_6;

  /// No description provided for @option26_7.
  ///
  /// In pt, this message translates to:
  /// **'Cidadania'**
  String get option26_7;

  /// No description provided for @option26_8.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option26_8;

  /// No description provided for @question27.
  ///
  /// In pt, this message translates to:
  /// **'O projeto trabalhou/trabalhará as questões emocionais dos participantes durante o projeto?'**
  String get question27;

  /// No description provided for @option27_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option27_1;

  /// No description provided for @option27_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option27_2;

  /// No description provided for @question28.
  ///
  /// In pt, this message translates to:
  /// **'Se sim, de que maneira o projeto buscou/buscará considerar as questões emocionais?'**
  String get question28;

  /// No description provided for @option28_1.
  ///
  /// In pt, this message translates to:
  /// **'Atividades de expressão emocional por meio da arte'**
  String get option28_1;

  /// No description provided for @option28_2.
  ///
  /// In pt, this message translates to:
  /// **'Discussões sobre sentimentos e práticas de bem-estar emocional'**
  String get option28_2;

  /// No description provided for @option28_3.
  ///
  /// In pt, this message translates to:
  /// **'Apoio emocional e aconselhamento'**
  String get option28_3;

  /// No description provided for @option28_4.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option28_4;

  /// No description provided for @question29.
  ///
  /// In pt, this message translates to:
  /// **'Quais emoções prevaleceram entre os participantes durante o projeto?'**
  String get question29;

  /// No description provided for @option29_1.
  ///
  /// In pt, this message translates to:
  /// **'Ansiedade'**
  String get option29_1;

  /// No description provided for @option29_2.
  ///
  /// In pt, this message translates to:
  /// **'Medo'**
  String get option29_2;

  /// No description provided for @option29_3.
  ///
  /// In pt, this message translates to:
  /// **'Frustração'**
  String get option29_3;

  /// No description provided for @option29_4.
  ///
  /// In pt, this message translates to:
  /// **'Esperança'**
  String get option29_4;

  /// No description provided for @question30.
  ///
  /// In pt, this message translates to:
  /// **'O projeto buscou/buscará incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?'**
  String get question30;

  /// No description provided for @option30_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option30_1;

  /// No description provided for @option30_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option30_2;

  /// No description provided for @question31.
  ///
  /// In pt, this message translates to:
  /// **'Se sim, de que maneira o projeto incentiva essa conexão?'**
  String get question31;

  /// No description provided for @option31_1.
  ///
  /// In pt, this message translates to:
  /// **'Experiências diretas na natureza'**
  String get option31_1;

  /// No description provided for @option31_2.
  ///
  /// In pt, this message translates to:
  /// **'Narrativas e histórias inspiradoras'**
  String get option31_2;

  /// No description provided for @option31_3.
  ///
  /// In pt, this message translates to:
  /// **'Atividades de voluntariado e serviço comunitário'**
  String get option31_3;

  /// No description provided for @option31_4.
  ///
  /// In pt, this message translates to:
  /// **'Reflexões pessoais e compartilhamento de experiências emocionais'**
  String get option31_4;

  /// No description provided for @option31_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option31_5;

  /// No description provided for @question32.
  ///
  /// In pt, this message translates to:
  /// **'Quais instrumentos foram/serão utilizados para abordar a temática?'**
  String get question32;

  /// No description provided for @option32_1.
  ///
  /// In pt, this message translates to:
  /// **'Materiais didáticos (livros, artigos, vídeos)'**
  String get option32_1;

  /// No description provided for @option32_2.
  ///
  /// In pt, this message translates to:
  /// **'Atividades práticas (experimentos, projetos de campo)'**
  String get option32_2;

  /// No description provided for @option32_3.
  ///
  /// In pt, this message translates to:
  /// **'Tecnologias digitais (software, simulações, aplicativos)'**
  String get option32_3;

  /// No description provided for @option32_4.
  ///
  /// In pt, this message translates to:
  /// **'Colaborações com especialistas e instituições'**
  String get option32_4;

  /// No description provided for @option32_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option32_5;

  /// No description provided for @question33.
  ///
  /// In pt, this message translates to:
  /// **'De que maneira ocorreram/ocorrerão as atividades desenvolvidas no projeto?'**
  String get question33;

  /// No description provided for @option33_1.
  ///
  /// In pt, this message translates to:
  /// **'Debate e discussão aberta'**
  String get option33_1;

  /// No description provided for @option33_2.
  ///
  /// In pt, this message translates to:
  /// **'Análise de informações e fontes diversas'**
  String get option33_2;

  /// No description provided for @option33_3.
  ///
  /// In pt, this message translates to:
  /// **'Reflexão individual e autoavaliação'**
  String get option33_3;

  /// No description provided for @option33_4.
  ///
  /// In pt, this message translates to:
  /// **'Realização de oficinas e/ou atividades previamente planejadas'**
  String get option33_4;

  /// No description provided for @option33_5.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option33_5;

  /// No description provided for @question34.
  ///
  /// In pt, this message translates to:
  /// **'Os participantes encontraram dificuldades em relação à problemática da Emergência Climática?'**
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
  /// **'Se sim, quais foram as dificuldades referente ao conteúdo do projeto?'**
  String get question35;

  /// No description provided for @option35_1.
  ///
  /// In pt, this message translates to:
  /// **'Estabelecer conexões entre as dimensões da problemática'**
  String get option35_1;

  /// No description provided for @option35_2.
  ///
  /// In pt, this message translates to:
  /// **'Desinformação'**
  String get option35_2;

  /// No description provided for @option35_3.
  ///
  /// In pt, this message translates to:
  /// **'Reconhecer a problemática no contexto local'**
  String get option35_3;

  /// No description provided for @question36.
  ///
  /// In pt, this message translates to:
  /// **'Indique qual/quais áreas do conhecimento foram/serão contempladas durante a realização do projeto:'**
  String get question36;

  /// No description provided for @option36_1.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Exatas'**
  String get option36_1;

  /// No description provided for @option36_2.
  ///
  /// In pt, this message translates to:
  /// **'Ciências da Terra'**
  String get option36_2;

  /// No description provided for @option36_3.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Biológicas'**
  String get option36_3;

  /// No description provided for @option36_4.
  ///
  /// In pt, this message translates to:
  /// **'Engenharia/Tecnologia'**
  String get option36_4;

  /// No description provided for @option36_5.
  ///
  /// In pt, this message translates to:
  /// **'Ciências da Saúde'**
  String get option36_5;

  /// No description provided for @option36_6.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Agrárias'**
  String get option36_6;

  /// No description provided for @option36_7.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Sociais'**
  String get option36_7;

  /// No description provided for @option36_8.
  ///
  /// In pt, this message translates to:
  /// **'Ciências Humanas'**
  String get option36_8;

  /// No description provided for @option36_9.
  ///
  /// In pt, this message translates to:
  /// **'Letras'**
  String get option36_9;

  /// No description provided for @option36_10.
  ///
  /// In pt, this message translates to:
  /// **'Artes'**
  String get option36_10;

  /// No description provided for @question37.
  ///
  /// In pt, this message translates to:
  /// **'De que maneira ocorreu/ocorrerá a integração entre as áreas?'**
  String get question37;

  /// No description provided for @option37_1.
  ///
  /// In pt, this message translates to:
  /// **'Discussões teóricas'**
  String get option37_1;

  /// No description provided for @option37_2.
  ///
  /// In pt, this message translates to:
  /// **'Exemplos práticos'**
  String get option37_2;

  /// No description provided for @option37_3.
  ///
  /// In pt, this message translates to:
  /// **'Participação de outros profissionais'**
  String get option37_3;

  /// No description provided for @question38.
  ///
  /// In pt, this message translates to:
  /// **'Foram encontradas dificuldades durante alguma etapa do projeto?'**
  String get question38;

  /// No description provided for @option38_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option38_1;

  /// No description provided for @option38_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option38_2;

  /// No description provided for @question39.
  ///
  /// In pt, this message translates to:
  /// **'Se sim, selecione as dificuldades encontradas:'**
  String get question39;

  /// No description provided for @option39_1.
  ///
  /// In pt, this message translates to:
  /// **'Conteúdo'**
  String get option39_1;

  /// No description provided for @option39_2.
  ///
  /// In pt, this message translates to:
  /// **'Integração do conteúdo ao currículo'**
  String get option39_2;

  /// No description provided for @option39_3.
  ///
  /// In pt, this message translates to:
  /// **'Financeiro'**
  String get option39_3;

  /// No description provided for @option39_4.
  ///
  /// In pt, this message translates to:
  /// **'Logístico'**
  String get option39_4;

  /// No description provided for @option39_5.
  ///
  /// In pt, this message translates to:
  /// **'Administrativo'**
  String get option39_5;

  /// No description provided for @option39_6.
  ///
  /// In pt, this message translates to:
  /// **'Engajamento e participação'**
  String get option39_6;

  /// No description provided for @option39_7.
  ///
  /// In pt, this message translates to:
  /// **'Outros'**
  String get option39_7;

  /// No description provided for @question40.
  ///
  /// In pt, this message translates to:
  /// **'Foram/serão realizadas avaliações durante o andamento do projeto?'**
  String get question40;

  /// No description provided for @option40_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option40_1;

  /// No description provided for @option40_2.
  ///
  /// In pt, this message translates to:
  /// **'Não apenas no final do projeto'**
  String get option40_2;

  /// No description provided for @question41.
  ///
  /// In pt, this message translates to:
  /// **'Houve/haverá um momento destinado para a autoavaliação dos participantes?'**
  String get question41;

  /// No description provided for @option41_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option41_1;

  /// No description provided for @option41_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option41_2;

  /// No description provided for @question42.
  ///
  /// In pt, this message translates to:
  /// **'O feedback dos participantes foi/será utilizado para ajustar o projeto?'**
  String get question42;

  /// No description provided for @option42_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option42_1;

  /// No description provided for @option42_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option42_2;

  /// No description provided for @question43.
  ///
  /// In pt, this message translates to:
  /// **'Durante o preenchimento deste formulário você teve novas ideias ou se deparou com questões que não havia imaginado para o seu projeto?'**
  String get question43;

  /// No description provided for @option43_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option43_1;

  /// No description provided for @option43_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option43_2;

  /// No description provided for @question44.
  ///
  /// In pt, this message translates to:
  /// **'Este questionário ofereceu contribuições para melhorar o seu projeto?'**
  String get question44;

  /// No description provided for @option44_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim contribuiu significativamente'**
  String get option44_1;

  /// No description provided for @option44_2.
  ///
  /// In pt, this message translates to:
  /// **'Sim contribuiu de forma moderada'**
  String get option44_2;

  /// No description provided for @option44_3.
  ///
  /// In pt, this message translates to:
  /// **'Não, não contribuiu'**
  String get option44_3;

  /// No description provided for @question45.
  ///
  /// In pt, this message translates to:
  /// **'Você gostaria de compartilhar as respostas de seu questionário com os autores de forma a auxiliar nas pesquisas de melhoria do aplicativo?'**
  String get question45;

  /// No description provided for @option45_1.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get option45_1;

  /// No description provided for @option45_2.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get option45_2;
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
