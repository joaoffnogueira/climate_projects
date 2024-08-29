import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

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
  String get question2 => 'O projeto surgiu a partir de uma necessidade real da comunidade identificada através de um diagnóstico prévio?';

  @override
  String option2_1(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Sim, foi realizado um diagnóstico prévio',
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
  String get option3_3 => 'Funcionários (limpeza cantina secretaria)';

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
        'past': 'Qual foi o principal foco do diagnóstico?',
        'other': 'Qual será o principal foco do diagnóstico?',
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
        'other': 'Os resultados do diagnóstico não serão incorporados no projeto',
      },
    );
    return '$_temp0';
  }

  @override
  String get question7 => 'Os participantes do projeto possuem algum envolvimento prévio com a temática?';

  @override
  String get option7_1 => 'Sim';

  @override
  String get option7_2 => 'Não';

  @override
  String get question8 => 'Quem participará do projeto?';

  @override
  String get option8_1 => 'Alunos';

  @override
  String get option8_2 => 'Professores';

  @override
  String get option8_3 => 'Funcionários (limpeza cantina secretaria)';

  @override
  String get option8_4 => 'Gestores (diretoria e pedagogos)';

  @override
  String get option8_5 => 'Moradores da comunidade';

  @override
  String get option8_6 => 'Outros';

  @override
  String question9(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'O projeto promoveu colaboração entre diferentes setores da sociedade?',
        'other': 'O projeto promoverá colaboração entre diferentes setores da sociedade?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option9_1 => 'Sim';

  @override
  String get option9_2 => 'Não';

  @override
  String get question10 => 'Se sim, quem participou?';

  @override
  String get option10_1 => 'Empresas';

  @override
  String get option10_2 => 'Pais e responsáveis';

  @override
  String get option10_3 => 'Comunidade local';

  @override
  String get option10_4 => 'Organizações Não Governamentais (ONGs)';

  @override
  String get option10_5 => 'Instituições de ensino superior';

  @override
  String get option10_6 => 'Empresas privadas';

  @override
  String get option10_7 => 'Órgãos governamentais';

  @override
  String get option10_8 => 'Especialistas (cientistas, ambientalistas, etc_)';

  @override
  String get option10_9 => 'Outros';

  @override
  String get question11 => 'Em que momento se deu essa colaboração?';

  @override
  String get option11_1 => 'Em todas as etapas';

  @override
  String get option11_2 => 'Em momentos específicos';

  @override
  String question12(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'De que maneira foi essa participação?',
        'other': 'De que maneira será essa participação?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option12_1 => 'A partir de dicas e auxílio em análises';

  @override
  String get option12_2 => 'Consultas durante o diagnóstico prévio';

  @override
  String get option12_3 => 'Realização de palestras e workshops para formação';

  @override
  String get option12_4 => 'Com apoio logístico e/ou financeiro';

  @override
  String get option12_5 => 'Outros';

  @override
  String get question13 => 'Houve alguma dificuldade durante a integração dos setores?';

  @override
  String get option13_1 => 'Não houve dificuldade';

  @override
  String get option13_2 => 'Sim houve dificuldade';

  @override
  String get question14 => 'Se sim, quais foram as dificuldades encontradas na integração de diferentes setores?';

  @override
  String get option14_1 => 'Falta de tempo e disponibilidade';

  @override
  String get option14_2 => 'Dificuldade de comunicação';

  @override
  String get option14_3 => 'Diferenças de interesse e objetivos';

  @override
  String get option14_4 => 'Limitação de recursos financeiros';

  @override
  String get option14_5 => 'Outros';

  @override
  String question15(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Com relação à Emergência Climática, quais os temas que foram abordados no projeto?',
        'other': 'Com relação à Emergência Climática, quais os temas que serão abordados no projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option15_1 => 'Causas e consequências';

  @override
  String get option15_2 => 'Formas de enfrentamento';

  @override
  String get option15_3 => 'Políticas públicas sobre mudanças climáticas';

  @override
  String get option15_4 => 'Educação e conscientização ambiental';

  @override
  String get option15_5 => 'Outros';

  @override
  String question16(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais dimensões abaixo você abordou em seu projeto?',
        'other': 'Quais dimensões abaixo você abordará em seu projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option16_1 => 'Política';

  @override
  String get option16_2 => 'Econômica';

  @override
  String get option16_3 => 'Social';

  @override
  String get option16_4 => 'Cultural';

  @override
  String get option16_5 => 'Ética';

  @override
  String get option16_6 => 'Ecológica/Natural';

  @override
  String get option16_7 => 'do Indivíduo';

  @override
  String get option16_8 => 'Artísticos';

  @override
  String get option16_9 => 'Históricos';

  @override
  String question17(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos políticos você abordou?',
        'other': 'Quais aspectos políticos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option17_1 => 'Políticas públicas ambientais';

  @override
  String get option17_2 => 'Legislação e acordos internacionais sobre mudanças climáticas';

  @override
  String get option17_3 => 'Governança e tomada de decisão';

  @override
  String question18(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos econômicos você abordou?',
        'other': 'Quais aspectos econômicos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option18_1 => 'Alternativas econômicas em relação ao modelo vigente';

  @override
  String get option18_2 => 'Impactos econômicos das mudanças climáticas';

  @override
  String get option18_3 => 'Práticas econômicas locais e globais';

  @override
  String get option18_4 => 'Modelo econômico vigente';

  @override
  String question19(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos sociais você abordou?',
        'other': 'Quais aspectos sociais você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option19_1 => 'Equidade';

  @override
  String get option19_2 => 'Vulnerabilidade social';

  @override
  String get option19_3 => 'Ações comunitárias e engajamento social';

  @override
  String question20(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos culturais você abordou?',
        'other': 'Quais aspectos culturais você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option20_1 => 'Valorização da diversidade cultural local';

  @override
  String get option20_2 => 'Diálogo entre diferentes culturas';

  @override
  String get option20_3 => 'Práticas culturais locais e sua relação com o ambiente';

  @override
  String question21(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos éticos você abordou?',
        'other': 'Quais aspectos éticos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option21_1 => 'Ética ambiental e responsabilidade ecológica';

  @override
  String get option21_2 => 'Dilemas entre atitudes individuais e sociais';

  @override
  String get question22 => 'Quais aspectos naturais você considera importante de serem abordados em um projeto com essa temática?';

  @override
  String get option22_1 => 'Biodiversidade';

  @override
  String get option22_2 => 'Vegetação';

  @override
  String get option22_3 => 'Água';

  @override
  String get option22_4 => 'Solo';

  @override
  String get option22_5 => 'Ar';

  @override
  String get option22_6 => 'Desastres ambientais';

  @override
  String question23(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos do indivíduo você abordou?',
        'other': 'Quais aspectos do indivíduo você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option23_1 => 'Autoconhecimento/autocrítica';

  @override
  String get option23_2 => 'Mudança de comportamento';

  @override
  String get option23_3 => 'Valorização das experiências individuais';

  @override
  String get option23_4 => 'Saúde física';

  @override
  String get option23_5 => 'Saúde mental';

  @override
  String question24(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos artísticos você abordou?',
        'other': 'Quais aspectos artísticos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option24_1 => 'Arte para expressar e comunicar temas ambientais';

  @override
  String get option24_2 => 'Projetos colaborativos com artistas locais';

  @override
  String get option24_3 => 'Produção artística';

  @override
  String question25(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais aspectos históricos você abordou?',
        'other': 'Quais aspectos históricos você abordará?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option25_1 => 'Contextualização histórica das mudanças climáticas';

  @override
  String get option25_2 => 'Eventos históricos relacionados ao ambiente';

  @override
  String get option25_3 => 'História local';

  @override
  String question26(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais valores foram trabalhados durante o desenvolvimento do projeto?',
        'other': 'Quais valores serão trabalhados durante o desenvolvimento do projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option26_1 => 'Respeito ao meio ambiente';

  @override
  String get option26_2 => 'Solidariedade e cooperação';

  @override
  String get option26_3 => 'Justiça social e equidade';

  @override
  String get option26_4 => 'Sustentabilidade';

  @override
  String get option26_5 => 'Consumo consciente';

  @override
  String get option26_6 => 'Responsabilidade';

  @override
  String get option26_7 => 'Cidadania';

  @override
  String get option26_8 => 'Outros';

  @override
  String question27(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'O projeto trabalhou as questões emocionais dos participantes durante o projeto?',
        'other': 'O projeto trabalhará as questões emocionais dos participantes durante o projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option27_1 => 'Sim';

  @override
  String get option27_2 => 'Não';

  @override
  String question28(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Se sim, de que maneira o projeto buscou considerar as questões emocionais?',
        'other': 'Se sim, de que maneira o projeto buscará considerar as questões emocionais?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option28_1 => 'Atividades de expressão emocional por meio da arte';

  @override
  String get option28_2 => 'Discussões sobre sentimentos e práticas de bem-estar emocional';

  @override
  String get option28_3 => 'Apoio emocional e aconselhamento';

  @override
  String get option28_4 => 'Outros';

  @override
  String get question29 => 'Quais emoções prevaleceram entre os participantes durante o projeto?';

  @override
  String get option29_1 => 'Ansiedade';

  @override
  String get option29_2 => 'Medo';

  @override
  String get option29_3 => 'Frustração';

  @override
  String get option29_4 => 'Esperança';

  @override
  String question30(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'O projeto buscou incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?',
        'other': 'O projeto buscará incentivar os participantes a desenvolverem uma conexão emocional com o ambiente?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option30_1 => 'Sim';

  @override
  String get option30_2 => 'Não';

  @override
  String get question31 => 'Se sim, de que maneira o projeto incentiva essa conexão?';

  @override
  String get option31_1 => 'Experiências diretas na natureza';

  @override
  String get option31_2 => 'Narrativas e histórias inspiradoras';

  @override
  String get option31_3 => 'Atividades de voluntariado e serviço comunitário';

  @override
  String get option31_4 => 'Reflexões pessoais e compartilhamento de experiências emocionais';

  @override
  String get option31_5 => 'Outros';

  @override
  String question32(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Quais instrumentos foram utilizados para abordar a temática?',
        'other': 'Quais instrumentos serão utilizados para abordar a temática?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option32_1 => 'Materiais didáticos (livros, artigos, vídeos)';

  @override
  String get option32_2 => 'Atividades práticas (experimentos, projetos de campo)';

  @override
  String get option32_3 => 'Tecnologias digitais (software, simulações, aplicativos)';

  @override
  String get option32_4 => 'Colaborações com especialistas e instituições';

  @override
  String get option32_5 => 'Outros';

  @override
  String question33(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'De que maneira ocorreram as atividades desenvolvidas no projeto?',
        'other': 'De que maneira ocorrerão as atividades desenvolvidas no projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option33_1 => 'Debate e discussão aberta';

  @override
  String get option33_2 => 'Análise de informações e fontes diversas';

  @override
  String get option33_3 => 'Reflexão individual e autoavaliação';

  @override
  String get option33_4 => 'Realização de oficinas e/ou atividades previamente planejadas';

  @override
  String get option33_5 => 'Outros';

  @override
  String get question34 => 'Os participantes encontraram dificuldades em relação à problemática da Emergência Climática?';

  @override
  String get option34_1 => 'Sim';

  @override
  String get option34_2 => 'Não';

  @override
  String get question35 => 'Se sim, quais foram as dificuldades referente ao conteúdo do projeto?';

  @override
  String get option35_1 => 'Estabelecer conexões entre as dimensões da problemática';

  @override
  String get option35_2 => 'Desinformação';

  @override
  String get option35_3 => 'Reconhecer a problemática no contexto local';

  @override
  String question36(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Indique qual/quais áreas do conhecimento foram contempladas durante a realização do projeto:',
        'other': 'Indique qual/quais áreas do conhecimento serão contempladas durante a realização do projeto:',
      },
    );
    return '$_temp0';
  }

  @override
  String get option36_1 => 'Ciências Exatas';

  @override
  String get option36_2 => 'Ciências da Terra';

  @override
  String get option36_3 => 'Ciências Biológicas';

  @override
  String get option36_4 => 'Engenharia/Tecnologia';

  @override
  String get option36_5 => 'Ciências da Saúde';

  @override
  String get option36_6 => 'Ciências Agrárias';

  @override
  String get option36_7 => 'Ciências Sociais';

  @override
  String get option36_8 => 'Ciências Humanas';

  @override
  String get option36_9 => 'Letras';

  @override
  String get option36_10 => 'Artes';

  @override
  String question37(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'De que maneira ocorreu a integração entre as áreas?',
        'other': 'De que maneira ocorrerá a integração entre as áreas?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option37_1 => 'Discussões teóricas';

  @override
  String get option37_2 => 'Exemplos práticos';

  @override
  String get option37_3 => 'Participação de outros profissionais';

  @override
  String get question38 => 'Foram encontradas dificuldades durante alguma etapa do projeto?';

  @override
  String get option38_1 => 'Sim';

  @override
  String get option38_2 => 'Não';

  @override
  String get question39 => 'Se sim, selecione as dificuldades encontradas:';

  @override
  String get option39_1 => 'Conteúdo';

  @override
  String get option39_2 => 'Integração do conteúdo ao currículo';

  @override
  String get option39_3 => 'Financeiro';

  @override
  String get option39_4 => 'Logístico';

  @override
  String get option39_5 => 'Administrativo';

  @override
  String get option39_6 => 'Engajamento e participação';

  @override
  String get option39_7 => 'Outros';

  @override
  String question40(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Foram realizadas avaliações durante o andamento do projeto?',
        'other': 'Serão realizadas avaliações durante o andamento do projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option40_1 => 'Sim';

  @override
  String get option40_2 => 'Não apenas no final do projeto';

  @override
  String question41(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'Houve um momento destinado para a autoavaliação dos participantes?',
        'other': 'Haverá um momento destinado para a autoavaliação dos participantes?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option41_1 => 'Sim';

  @override
  String get option41_2 => 'Não';

  @override
  String question42(String tense) {
    String _temp0 = intl.Intl.selectLogic(
      tense,
      {
        'past': 'O feedback dos participantes foi utilizado para ajustar o projeto?',
        'other': 'O feedback dos participantes será utilizado para ajustar o projeto?',
      },
    );
    return '$_temp0';
  }

  @override
  String get option42_1 => 'Sim';

  @override
  String get option42_2 => 'Não';

  @override
  String get question43 => 'Durante o preenchimento deste formulário você teve novas ideias ou se deparou com questões que não havia imaginado para o seu projeto?';

  @override
  String get option43_1 => 'Sim';

  @override
  String get option43_2 => 'Não';

  @override
  String get question44 => 'Este questionário ofereceu contribuições para melhorar o seu projeto?';

  @override
  String get option44_1 => 'Sim contribuiu significativamente';

  @override
  String get option44_2 => 'Sim contribuiu de forma moderada';

  @override
  String get option44_3 => 'Não, não contribuiu';

  @override
  String get question45 => 'Você gostaria de compartilhar as respostas de seu questionário com os autores de forma a auxiliar nas pesquisas de melhoria do aplicativo?';

  @override
  String get option45_1 => 'Sim';

  @override
  String get option45_2 => 'Não';
}
