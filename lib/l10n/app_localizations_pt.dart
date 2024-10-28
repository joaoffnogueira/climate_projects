import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get question1 => 'Qual a fase atual do desenvolvimento do projeto?';

  @override
  String get option1_1 => 'Planejamento';

  @override
  String get option1_2 => 'Em andamento';

  @override
  String get option1_3 => 'Concluído';

  @override
  String get question2 => 'O projeto surgiu a partir de uma necessidade real da comunidade, identificada através de um diagnóstico prévio?';

  @override
  String option2_1(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Sim, foi realizado um diagnóstico prévio',
        'present': 'Sim, está sendo realizado um diagnóstico prévio',
        'other': 'Sim, será realizado um diagnóstico prévio',
      },
    );
    return '$_temp0';
  }

  @override
  String option2_2(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Não, não foi realizado um diagnóstico prévio',
        'present': 'Não, não está sendo realizado um diagnóstico prévio',
        'other': 'Não será realizado um diagnóstico prévio',
      },
    );
    return '$_temp0';
  }

  @override
  String question3(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Com quem foi realizado o diagnóstico prévio?',
        'present': 'Com quem está sendo realizado o diagnóstico prévio?',
        'other': 'Com quem será realizado o diagnóstico prévio?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option3_1 => 'Alunos';

  @override
  String get option3_2 => 'Professores';

  @override
  String get option3_3 => 'Funcionários (limpeza, cantina, secretaria)';

  @override
  String get option3_4 => 'Gestores (diretoria e pedagogos)';

  @override
  String get option3_5 => 'Outros';

  @override
  String question4(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais métodos foram utilizados para realizar o diagnóstico?',
        'present': 'Quais métodos são utilizados para realizar o diagnóstico?',
        'other': 'Quais métodos serão utilizados para realizar o diagnóstico?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option4_1 => 'Observações de campo em reuniões comunitárias';

  @override
  String get option4_2 => 'Pesquisas e entrevistas com a comunidade local';

  @override
  String get option4_3 => 'Análise de informações e relatórios existentes';

  @override
  String get option4_4 => 'Consultoria com especialistas';

  @override
  String get option4_5 => 'Outros';

  @override
  String question5(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Qual foi o principal objetivo do diagnóstico?',
        'present': 'Qual é o principal objetivo do diagnóstico?',
        'other': 'Qual será o principal objetivo do diagnóstico?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option5_1 => 'Identificação de problemas ambientais locais';

  @override
  String get option5_2 => 'Mapeamento de recursos e necessidades da comunidade';

  @override
  String get option5_3 => 'Avaliação das percepções e conhecimentos dos atores locais sobre as mudanças climáticas';

  @override
  String get option5_4 => 'Outros';

  @override
  String question6(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Os resultados do diagnóstico foram incorporados no planejamento do projeto?',
        'present': 'Os resultados do diagnóstico estão sendo incorporados no planejamento do projeto?',
        'other': 'Os resultados do diagnóstico serão incorporados no planejamento do projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String option6_1(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Os resultados do diagnóstico guiaram todas as fases do projeto',
        'present': 'Os resultados do diagnóstico guiam todas as fases do projeto',
        'other': 'Os resultados do diagnóstico guiarão todas as fases do projeto',
      },
    );
    return '$_temp0';
  }

  @override
  String option6_2(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Os resultados do diagnóstico guiaram algumas atividades dentro do projeto',
        'present': 'Os resultados do diagnóstico guiam algumas atividades dentro do projeto',
        'other': 'Os resultados do diagnóstico guiarão algumas atividades dentro do projeto',
      },
    );
    return '$_temp0';
  }

  @override
  String option6_3(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Os resultados do diagnóstico não foram incorporados no projeto',
        'present': 'Os resultados do diagnóstico não estão sendo incorporados no projeto',
        'other': 'Os resultados do diagnóstico não serão incorporados no projeto',
      },
    );
    return '$_temp0';
  }

  @override
  String question7(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quem participou do projeto?',
        'present': 'Quem participa do projeto?',
        'other': 'Quem participará do projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option7_1 => 'Alunos';

  @override
  String get option7_2 => 'Professores';

  @override
  String get option7_3 => 'Funcionários (limpeza cantina secretaria)';

  @override
  String get option7_4 => 'Gestores (diretoria e pedagogos)';

  @override
  String get option7_5 => 'Moradores da comunidade';

  @override
  String get option7_6 => 'Outros';

  @override
  String question8(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'O projeto promoveu colaboração entre diferentes setores da sociedade?',
        'present': 'O projeto promove colaboração entre diferentes setores da sociedade?',
        'other': 'O projeto promoverá colaboração entre diferentes setores da sociedade?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option8_1 => 'Sim';

  @override
  String get option8_2 => 'Não';

  @override
  String question9(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Se sim, quem participou?',
        'present': 'Se sim, quem participa?',
        'other': 'Se sim, quem participará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option9_1 => 'Empresas';

  @override
  String get option9_2 => 'Pais e responsáveis';

  @override
  String get option9_3 => 'Comunidade local';

  @override
  String get option9_4 => 'Organizações Não Governamentais (ONGs)';

  @override
  String get option9_5 => 'Instituições de ensino superior';

  @override
  String get option9_6 => 'Empresas privadas';

  @override
  String get option9_7 => 'Órgãos governamentais';

  @override
  String get option9_8 => 'Especialistas (cientistas, ambientalistas, etc_)';

  @override
  String get option9_9 => 'Outros';

  @override
  String question10(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'De que maneira foi essa participação?',
        'present': 'De que maneira é essa participação?',
        'other': 'De que maneira será essa participação?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option10_1 => 'A partir de dicas e auxílio em análises';

  @override
  String get option10_2 => 'Consultas durante o diagnóstico prévio';

  @override
  String get option10_3 => 'Realização de palestras e workshops para formação';

  @override
  String get option10_4 => 'Com apoio logístico e/ou financeiro';

  @override
  String get option10_5 => 'Outros';

  @override
  String question11(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Com relação à Emergência Climática, quais os temas que foram abordados no projeto?',
        'present': 'Com relação à Emergência Climática, quais os temas que são abordados no projeto?',
        'other': 'Com relação à Emergência Climática, quais os temas que serão abordados no projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option11_1 => 'Causas e consequências';

  @override
  String get option11_2 => 'Formas de enfrentamento';

  @override
  String get option11_3 => 'Políticas públicas sobre mudanças climáticas';

  @override
  String get option11_4 => 'Educação e conscientização ambiental';

  @override
  String get option11_5 => 'Outros';

  @override
  String question12(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais dimensões abaixo você abordou em seu projeto?',
        'present': 'Quais dimensões abaixo você aborda em seu projeto?',
        'other': 'Quais dimensões abaixo você abordará em seu projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option12_1 => 'Política';

  @override
  String get option12_2 => 'Econômica';

  @override
  String get option12_3 => 'Social';

  @override
  String get option12_4 => 'Cultural';

  @override
  String get option12_5 => 'Ética';

  @override
  String get option12_6 => 'Ecológica/Natural';

  @override
  String get option12_7 => 'do Indivíduo';

  @override
  String get option12_8 => 'Artísticos';

  @override
  String get option12_9 => 'Históricos';

  @override
  String question13(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos políticos você abordou?',
        'present': 'Quais aspectos políticos você aborda?',
        'other': 'Quais aspectos políticos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option13_1 => 'Políticas públicas ambientais';

  @override
  String get option13_2 => 'Legislação e acordos internacionais sobre mudanças climáticas';

  @override
  String get option13_3 => 'Governança e tomada de decisão';

  @override
  String question14(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos econômicos você abordou?',
        'present': 'Quais aspectos econômicos você aborda?',
        'other': 'Quais aspectos econômicos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option14_1 => 'Alternativas econômicas em relação ao modelo vigente';

  @override
  String get option14_2 => 'Impactos econômicos das mudanças climáticas';

  @override
  String get option14_3 => 'Práticas econômicas locais e globais';

  @override
  String get option14_4 => 'Modelo econômico vigente';

  @override
  String question15(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos sociais você abordou?',
        'present': 'Quais aspectos sociais você aborda?',
        'other': 'Quais aspectos sociais você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option15_1 => 'Equidade';

  @override
  String get option15_2 => 'Vulnerabilidade social';

  @override
  String get option15_3 => 'Ações comunitárias e engajamento social';

  @override
  String question16(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos culturais você abordou?',
        'present': 'Quais aspectos culturais você aborda?',
        'other': 'Quais aspectos culturais você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option16_1 => 'Valorização da diversidade cultural local';

  @override
  String get option16_2 => 'Diálogo entre diferentes culturas';

  @override
  String get option16_3 => 'Práticas culturais locais e sua relação com o ambiente';

  @override
  String question17(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos éticos você abordou?',
        'present': 'Quais aspectos éticos você aborda?',
        'other': 'Quais aspectos éticos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option17_1 => 'Ética ambiental e responsabilidade ecológica';

  @override
  String get option17_2 => 'Dilemas entre atitudes individuais e sociais';

  @override
  String question18(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos naturais você abordou?',
        'present': 'Quais aspectos naturais você aborda?',
        'other': 'Quais aspectos naturais você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option18_1 => 'Biodiversidade';

  @override
  String get option18_2 => 'Vegetação';

  @override
  String get option18_3 => 'Água';

  @override
  String get option18_4 => 'Solo';

  @override
  String get option18_5 => 'Ar';

  @override
  String get option18_6 => 'Desastres ambientais';

  @override
  String question19(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos do indivíduo você abordou?',
        'present': 'Quais aspectos do indivíduo você aborda?',
        'other': 'Quais aspectos do indivíduo você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option19_1 => 'Autoconhecimento/autocrítica';

  @override
  String get option19_2 => 'Mudança de comportamento';

  @override
  String get option19_3 => 'Valorização das experiências individuais';

  @override
  String get option19_4 => 'Saúde física';

  @override
  String get option19_5 => 'Saúde mental';

  @override
  String question20(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos artísticos você abordou?',
        'present': 'Quais aspectos artísticos você aborda?',
        'other': 'Quais aspectos artísticos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option20_1 => 'Arte para expressar e comunicar temas ambientais';

  @override
  String get option20_2 => 'Projetos colaborativos com artistas locais';

  @override
  String get option20_3 => 'Produção artística';

  @override
  String question21(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos históricos você abordou?',
        'present': 'Quais aspectos históricos você aborda?',
        'other': 'Quais aspectos históricos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option21_1 => 'Contextualização histórica das mudanças climáticas';

  @override
  String get option21_2 => 'Eventos históricos relacionados ao ambiente';

  @override
  String get option21_3 => 'História local';

  @override
  String question22(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais valores foram trabalhados durante o desenvolvimento do projeto?',
        'present': 'Quais valores são trabalhados durante o desenvolvimento do projeto?',
        'other': 'Quais valores serão trabalhados durante o desenvolvimento do projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option22_1 => 'Respeito ao meio ambiente';

  @override
  String get option22_2 => 'Solidariedade e cooperação';

  @override
  String get option22_3 => 'Justiça social e equidade';

  @override
  String get option22_4 => 'Sustentabilidade';

  @override
  String get option22_5 => 'Consumo consciente';

  @override
  String get option22_6 => 'Responsabilidade';

  @override
  String get option22_7 => 'Cidadania';

  @override
  String get option22_8 => 'Outros';

  @override
  String get option22_9 => 'Não pensei nisso';

  @override
  String get question23 => 'Quais emoções emergiram entre os participantes durante a realização do projeto com relação à temática Emergência Climática?';

  @override
  String get option23_1 => 'Ansiedade';

  @override
  String get option23_2 => 'Medo';

  @override
  String get option23_3 => 'Frustração';

  @override
  String get option23_4 => 'Esperança';

  @override
  String get option23_5 => 'Empatia';

  @override
  String get option23_6 => 'Dúvida';

  @override
  String get option23_7 => 'Surpresa';

  @override
  String get option23_8 => 'Interesse';

  @override
  String get option23_9 => 'Alegria';

  @override
  String get option23_10 => 'Outros';

  @override
  String get option23_11 => 'Não pensei nisso';

  @override
  String get option23_12 => 'Não é possível responder pois o projeto ainda está em andamento';

  @override
  String question24(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'O projeto buscou incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?',
        'present': 'O projeto busca incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?',
        'other': 'O projeto buscará incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option24_1 => 'Sim';

  @override
  String get option24_2 => 'Não';

  @override
  String question25(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'De que maneira o projeto incentivou essa conexão?',
        'present': 'De que maneira o projeto incentiva essa conexão?',
        'other': 'De que maneira o projeto incentivará essa conexão?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option25_1 => 'Experiências diretas na natureza';

  @override
  String get option25_2 => 'Narrativas e histórias inspiradoras';

  @override
  String get option25_3 => 'Atividades de voluntariado e serviço comunitário';

  @override
  String get option25_4 => 'Reflexões pessoais e compartilhamento de experiências emocionais';

  @override
  String get option25_5 => 'Outros';

  @override
  String question26(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais instrumentos foram utilizados para abordar a temática?',
        'present': 'Quais instrumentos estão sendo utilizados para abordar a temática?',
        'other': 'Quais instrumentos serão utilizados para abordar a temática?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option26_1 => 'Materiais didáticos (livros, artigos, vídeos)';

  @override
  String get option26_2 => 'Atividades práticas (experimentos, projetos de campo)';

  @override
  String get option26_3 => 'Tecnologias digitais (software, simulações, aplicativos)';

  @override
  String get option26_4 => 'Colaborações com especialistas e instituições';

  @override
  String get option26_5 => 'Outros';

  @override
  String question27(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'De que maneira ocorreram as atividades desenvolvidas no projeto?',
        'present': 'De que maneira estão ocorrendo as atividades desenvolvidas no projeto?',
        'other': 'De que maneira ocorrerão as atividades desenvolvidas no projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option27_1 => 'Debate e discussão aberta';

  @override
  String get option27_2 => 'Análise de informações e fontes diversas';

  @override
  String get option27_3 => 'Reflexão individual e autoavaliação';

  @override
  String get option27_4 => 'Realização de oficinas e/ou atividades previamente planejadas';

  @override
  String get option27_5 => 'Outros';

  @override
  String question28(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Indique qual/quais áreas do conhecimento foram contempladas durante a realização do projeto:',
        'present': 'Indique qual/quais áreas do conhecimento estão sendo contempladas durante a realização do projeto:',
        'other': 'Indique qual/quais áreas do conhecimento serão contempladas durante a realização do projeto:',
      },
    );
    return '$_temp0';
  }

  @override
  String get option28_1 => 'Ciências Exatas';

  @override
  String get option28_2 => 'Ciências da Terra';

  @override
  String get option28_3 => 'Ciências Biológicas';

  @override
  String get option28_4 => 'Engenharia/Tecnologia';

  @override
  String get option28_5 => 'Ciências da Saúde';

  @override
  String get option28_6 => 'Ciências Agrárias';

  @override
  String get option28_7 => 'Ciências Sociais';

  @override
  String get option28_8 => 'Ciências Humanas';

  @override
  String get option28_9 => 'Letras';

  @override
  String get option28_10 => 'Artes';

  @override
  String question29(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'De que maneira ocorreu a integração entre as áreas?',
        'present': 'De que maneira ocorre a integração entre as áreas?',
        'other': 'De que maneira ocorrerá a integração entre as áreas?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option29_1 => 'Discussões teóricas';

  @override
  String get option29_2 => 'Exemplos práticos';

  @override
  String get option29_3 => 'Participação de outros profissionais';

  @override
  String get question30 => 'Selecione as dificuldades encontradas ao longo do projeto:';

  @override
  String get option30_1 => 'Conteúdo';

  @override
  String get option30_2 => 'Integração do conteúdo ao currículo';

  @override
  String get option30_3 => 'Financeiro';

  @override
  String get option30_4 => 'Logístico';

  @override
  String get option30_5 => 'Administrativo';

  @override
  String get option30_6 => 'Engajamento e participação';

  @override
  String get option30_7 => 'Outros';

  @override
  String get option30_8 => 'Não houveram dificuldades na realização do projeto';

  @override
  String get option30_9 => 'Não é possível responder pois o projeto ainda está em andamento';

  @override
  String question31(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Foram realizadas avaliações durante o andamento do projeto?',
        'present': 'São realizadas avaliações durante o andamento do projeto?',
        'other': 'Serão realizadas avaliações durante o andamento do projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option31_1 => 'Sim';

  @override
  String get option31_2 => 'Não apenas no final do projeto';

  @override
  String question32(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Houve um momento destinado para a autoavaliação dos participantes?',
        'present': 'Há um momento destinado para a autoavaliação dos participantes?',
        'other': 'Haverá um momento destinado para a autoavaliação dos participantes?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option32_1 => 'Sim';

  @override
  String get option32_2 => 'Não';

  @override
  String get question33 => 'Durante o preenchimento deste formulário, você teve novas ideias ou se deparou com questões que não havia imaginado para o seu projeto?';

  @override
  String get option33_1 => 'Sim';

  @override
  String get option33_2 => 'Não';

  @override
  String get question34 => 'Você gostaria de compartilhar as respostas de seu questionário com os autores de forma a auxiliar nas pesquisas de melhoria do aplicativo?';

  @override
  String get option34_1 => 'Sim';

  @override
  String get option34_2 => 'Não';

  @override
  String get question35 => 'OPCIONAL: Deixe abaixo seus comentários, críticas, sugestões, elogios, sobre o questionário.';
}
