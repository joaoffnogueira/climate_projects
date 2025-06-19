import '../../data/models/suggestion_category_enum.dart';
import '../../data/models/suggestion_lang_enum.dart';
import '../../data/models/suggestion_model.dart';
import '../../data/models/suggestion_type_enum.dart';

class LibraryDatabinding {
  final SuggestionCategoryEnum categoryFilter;
  LibraryDatabinding({
    required this.categoryFilter,
  }) {
    suggestionsCategory = suggestions
        .where((element) => element.category.contains(categoryFilter))
        .toList();
    filteredSuggestions = suggestionsCategory;
  }

  List<SuggestionModel> filteredSuggestions = [];
  List<SuggestionModel> suggestionsCategory = [];

  LibraryDatabinding copyWith({
    List<SuggestionModel>? filteredSuggestions,
    List<SuggestionModel>? suggestionsCategory,
  }) {
    return LibraryDatabinding(
      categoryFilter: categoryFilter,
    )
      ..filteredSuggestions = filteredSuggestions ?? this.filteredSuggestions
      ..suggestionsCategory = suggestionsCategory ?? this.suggestionsCategory;
  }

  List<SuggestionModel> suggestions = [
    SuggestionModel(
      title:
          "A Educação Ambiental na sala de aula: construção e aplicação de projetos",
      subtitle: "Daniel Mazurek e Adriana Massaê Kataoka",
      url: "https://tede.unicentro.br/jspui/handle/jspui/1455",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.project],
    ),
    SuggestionModel(
      title: "Subsídios para práticas de educação em uma perspectiva crítica",
      subtitle: "Bruno Bianchin Alves e Adriana Massaê Kataoka",
      url: "https://tede.unicentro.br/jspui/handle/jspui/1508",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.diagnosis],
    ),
    SuggestionModel(
      title:
          "A utilização do Vê Epistemológico de Gowin no ensino de Ciências como um instrumento não tradicional de avaliação da aprendizagem",
      subtitle:
          "Lucken Bueno Lucas, Simone Luccas, Fernando Martins do Espírito Santo, Rosa Shizue Abe",
      url:
          "https://ddd.uab.cat/pub/edlc/edlc_a2017nEXTRA/52_-_A_utilizacao_do_Ve_Epistemologico_de_Gowin_no_ensino_de_ciencias_como.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.evaluation],
    ),
    SuggestionModel(
      title:
          "Café avaliativo: uma reflexão a respeito da avaliação formativa na educação básica",
      subtitle:
          "Adriana Quimentão Passos, Andressa Felicio Coraiola Manoel, Willian Aparecido de Jesus Luditk, Simone Luccas",
      url:
          "https://www.researchgate.net/publication/347885638_Cafe_avaliativo_uma_reflexao_a_respeito_da_avaliacao_formativa_na_educacao_basica",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.evaluation],
    ),
    SuggestionModel(
      title:
          "Análise Textual Discursiva e suas contribuições para a avaliação escolar",
      subtitle:
          "Simone Luccas, Lucken Bueno Lucas, Rudolph dos Santos Gomes Pereira",
      url: "https://raco.cat/index.php/Ensenanza/article/view/307716/397692",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.evaluation],
    ),
    SuggestionModel(
      title:
          "Avaliação pelos Pares: uma proposta para envolver o aluno no processo de avaliação para aprendizagem",
      subtitle: "Fábio Nogueira de Queiroz, Simone Luccas",
      url:
          "https://unilogos.edu.eu/wp-content/uploads/2020/12/Por-uma-pratica-educativa-inovadora.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.evaluation],
    ),
    SuggestionModel(
      title:
          "O feedback na avaliação pelos pares: uma experiência na licenciatura em Matemática",
      subtitle: "Adriana Quimentão Passos, Simone Luccas",
      url: "https://rsdjournal.org/index.php/rsd/article/view/10197/9122",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.evaluation],
    ),
    SuggestionModel(
      title: "Tem um monstro na minha cozinha",
      subtitle: "Greenpeace Brasil",
      url: "https://www.youtube.com/watch?v=gLZcafZ8t_4",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Quem É o Responsável Pelas Mudanças Climáticas? – Quem Precisa Resolver Isso?",
      subtitle: "Em Poucas Palavras – Kurzgesagt",
      url: "https://www.youtube.com/watch?v=Mf2cxR9BWa4",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Você pode parar as mudanças climáticas?",
      subtitle: "Em Poucas Palavras – Kurzgesagt",
      url: "https://www.youtube.com/watch?v=MuSpZBVcxow",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Nós vamos RESOLVER as mudanças climáticas!",
      subtitle: "Em Poucas Palavras – Kurzgesagt",
      url: "https://www.youtube.com/watch?v=JcSgulAdofc",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "É muito tarde para parar as mudanças climáticas? Bem, é complicado",
      subtitle: "Em Poucas Palavras – Kurzgesagt",
      url: "https://www.youtube.com/watch?v=hiuYS2w4D4k",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Esse é o maior desafio da humanidade",
      subtitle: "Atila Iamarino",
      url: "https://www.youtube.com/watch?v=sgBF3XrJhvY",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Desmatamento no Brasil",
      subtitle: "Atila Iamarino",
      url: "https://www.youtube.com/watch?v=hIS89KngbNE",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Como o Brasil produz tanto e tem tanta fome?",
      subtitle: "Atila Iamarino",
      url: "https://www.youtube.com/watch?v=UmOXb5zLqJQ",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Proteger nosso planeta, combater as mudanças climáticas",
      subtitle: "ONU Brasil",
      url: "https://www.youtube.com/watch?v=l19WLdf_NLo",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "O Sal da Terra",
      subtitle: "Beto Guedes",
      url: "https://www.youtube.com/watch?v=72KeLv3RF7k",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Passarinhos",
      subtitle: "Emicida",
      url: "https://www.youtube.com/watch?v=IJcmLHjjAJ4",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Tá?",
      subtitle: "Pedro Luís",
      url: "https://www.youtube.com/watch?v=FH1N_5MDUYI",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Hagua",
      subtitle: "Seu Jorge",
      url: "https://www.youtube.com/watch?v=QVzEZXASfms",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "As Baleias",
      subtitle: "Roberto Carlos",
      url: "https://www.youtube.com/watch?v=UqOFuGMPzRg",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Sobradinho",
      subtitle: "Sa e Guarabyra",
      url: "https://www.youtube.com/watch?v=naxgLThFCsc",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Xote Ecológico",
      subtitle: "Luiz Gonzaga",
      url: "https://www.youtube.com/watch?v=YSwq5mJwi38",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Herdeiros do Futuro",
      subtitle: "Toquinho",
      url: "https://www.youtube.com/watch?v=KtfRRIc5VME",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Absurdo",
      subtitle: "Vanessa da Mata",
      url: "https://www.youtube.com/watch?v=LhzRjDQ1RjU",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Planeta Azul",
      subtitle: "Chitãozinho e Xororó",
      url: "https://www.youtube.com/watch?v=mAilU73D1YA",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Os Operadores Cognitivos do Pensamento Complexo",
      subtitle: "",
      url:
          "http://escoladedialogo.com.br/escoladedialogo/index.php/biblioteca/artigos/operadores-cognitivos/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "As três emergências que nossa sociedade enfrenta: saúde, biodiversidade e mudanças climáticas",
      subtitle: "Paulo Artaxo",
      url: "https://www.revistas.usp.br/eav/article/view/178752",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Guia para Justiça Climática",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/guia-para-justica-climatica/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Segurança Hídrica, Emergência Climática, Governança e Vulnerabilidade Social",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/seguranca-hidrica-emergencia-climatica-governanca-e-vulnerabilidade-social/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Mudanças climáticas e a sociedade",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/mudancas-climaticas-e-a-sociedade/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Educación para el cambio climático: ¿Educar sobre el clima o para el cambio?",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/educacion-para-el-cambio-climatico-educar-sobre-el-clima-o-para-el-cambio/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Mudanças climáticas, saúde e educação ambiental como política pública em tempos de crise socioambiental",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/mudancas-climaticas-saude-e-educacao-ambiental-como-politica-publica-em-tempos-de-crise-socioambiental/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Glossário da Justiça Climática",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/glossario-de-justica-climatica/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Glossário Climático para jovens",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/glossario-climatico-para-jovens/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Soberania Alimentar: Uma resposta às mudanças climáticas",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/soberania-alimentar-uma-resposta-as-mudancas-climaticas/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Quem precisa de justiça climática no Brasil?",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/quem-precisa-de-justica-climatica-no-brasil/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Racismo Ambiental e Emergências Climáticas no Brasil",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/racismo-ambiental-e-emergencias-climaticas-no-brasil/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Temas atuais em mudanças climáticas: para os ensinos fundamental e médio",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/temas-atuais-em-mudancas-climaticas-para-os-ensinos-fundamental-e-medio-2/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Novos temas em Emergência Climática para os ensinos Fundamental e Médio",
      subtitle: "",
      url:
          "https://www.livrosabertos.abcd.usp.br/portaldelivrosUSP/catalog/book/711",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Conhece e valoriza as alterações climáticas: Propostas para trabalhar em grupo",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/conhece-e-valoriza-as-alteracoes-climaticas-propostas-para-trabalhar-em-grupo/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Planejando o futuro hoje: ODS 13, adaptação e mudanças climáticas em São Paulo",
      subtitle: "",
      url:
          "https://repositorio.fgv.br/items/e9707cf2-d857-4003-8927-ed48b22ec813",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Relatório Síntese IPCC 2023",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/relatorio-sintese-do-sexto-relatorio-de-avaliacao-do-ipcc/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Vamos conhecer nosso Planeta? As Mudanças Climáticas - Em Metodologias Lúdicas",
      subtitle: "",
      url:
          "https://www.formaeducacional.com.br/2024/07/vamos-conhecer-nosso-planeta-as.html",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Glossário climático",
      subtitle: "",
      url:
          "https://climainfo.org.br/wp-content/uploads/2022/06/GlossarioClimaInfo_V3.pptx.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Periferia sem risco: Guia para planos Municipais de Redução de Riscos",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/guia-para-planos-municipais-de-reducao-de-riscos/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Mudanças do clima: Tudo o que você queria e não queria saber",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/mudancas-do-clima-tudo-o-que-voce-queria-e-nao-queria-saber/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Educação em clima de riscos de desastres",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/educacao-em-clima-de-riscos-de-desastres-2/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Educação ambiental, mudanças do clima e redução de riscos de desastres: Esperanças e vida em tempos de Capitaloceno",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/educacao-ambiental-mudancas-do-clima-e-reducao-de-riscos-de-desastres-esperancas-e-vida-em-tempos-de-capitaloceno/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "HQ Educação+Participação: uma equação para redução do risco de desastres",
      subtitle: "",
      url:
          "https://educacao.cemaden.gov.br/midiateca/hq-educacaoparticipacao-uma-equacao-para-reducao-do-risco-de-desastres/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Simulação da Ação Climática",
      subtitle:
          "A Simulação de Ação Climática é um jogo no formato de Role Playing Game (RPG), altamente interativo, que pode ser jogado presencialmente ou online. O jogo imita a Cúpula das Nações Unidas sobre a Emergência Climática, envolvendo os participantes na busca pelas principais soluções tecnológicas e políticas para lidar com o aquecimento global.",
      url:
          "https://www.climateinteractive.org/pt/simulacao-da-acao-climatica/#:~:text=Este%20jogo%20%C3%A9%20recurso%20l%C3%BAdico,leia%20o%20Manual%20do%20Facilitator.&text=Os%20folhetos%20de%20instru%C3%A7%C3%B5es%20do,fun%C3%A7%C3%B5es%20atribu%C3%ADdas%20aos%20seus%20personagens",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Cartas Contra o Planeta",
      subtitle:
          "Baseado na jogabilidade de “Cartas Contra Humanidade”, o jogo Cartas Contra o Planeta busca ampliar o debate sobre as causas e consequências da ação humana sobre o clima.",
      url:
          "https://tapioca.ird.fr/cartas-contra-o-planeta-um-game-educacional-para-aprender-sobre-mudancas-climaticas-globais/",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Survive the Century",
      subtitle:
          "O jogo Survive the Century apresenta uma narrativa sobre as escolhas políticas, ambientais e sociais que os seres humanos deverão fazer entre 2021 e 2100 em decorrer das adaptações necessárias por conta da mudança do clima. No jogo, você é o editor sênior de um dos maiores veículos de notícias do mundo, e você tem o poder de decidir o que estampa a capa do jornal. ",
      url: "https://survivethecentury.net/",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.en,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "The Climate Game – Can you reach net zero by 2050?",
      subtitle:
          "O jogo “The Climate Game – Can you reach net zero by 2050?” é altamente interativo, dando ao jogador a responsabilidade de manter o aquecimento global em até 1,5ºC, zerando as emissões de dióxido de carbono até 2050. Para ajudar, você pode escolher um especialista que irá dar importantes dicas sobre os possíveis cenários, podendo selecionar entre uma ativista adolescente que está inspirando mudanças de atitude, um empreendedor que está desenvolvendo novas tecnologias, um empresário que influencia líderes globais e uma política que busca mudanças no âmbito político.",
      url: "https://ig.ft.com/climate-game/",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.en,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Na Trilha do Risco",
      subtitle:
          "O jogo “Na Trilha do Risco” é um tabuleiro de chão, onde os participantes seguem um caminho para conhecer os impactos das mudanças climáticas, riscos socioambientais relevantes e encontram ações de prevenção e mitigação de riscos de desastres existentes nas diversas regiões do Brasil e seus biomas.",
      url: "https://educacao.cemaden.gov.br/midiateca/jogo-na-trilha-do-risco/",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Quem?",
      subtitle:
          "O jogo “Quem?” apresenta as diversas atuações necessárias antes, durante e após a ocorrência de desastres socioambientais, evidenciando a importância da atuação de diferentes profissionais.",
      url: "https://educacao.cemaden.gov.br/midiateca/jogo-quem/",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Minitrunfo",
      subtitle:
          "Baseado no “Supertrunfo”, o jogo “Minitrunfo” convida os participantes a pensarem sobre os tipos, frequência, risco de vida e duração dos desastres socioambientais, evidenciando as características dos processos que desencadeiam tais desastres.",
      url: "https://educacao.cemaden.gov.br/midiateca/jogo-minitrunfo/",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Mudança climática faz mulheres e famílias mais pobres de zonas rurais sofrerem perdas econômicas maiores, aponta FAO",
      subtitle: "Um só planeta",
      url:
          "https://umsoplaneta.globo.com/sociedade/noticia/2024/03/06/mudanca-climatica-faz-mulheres-e-familias-mais-pobres-de-zonas-rurais-sofrem-perdas-economicas-maiores-aponta-fao.ghtml",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Crise climática: Brasil tem mais de 900 municípios em estado de emergência",
      subtitle: "Veja",
      url:
          "https://veja.abril.com.br/coluna/maquiavel/crise-climatica-brasil-tem-mais-de-900-municipios-em-estado-de-emergencia",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Estudo alerta sobre potenciais riscos à saúde causados pelo estresse térmico",
      subtitle: "FioCruz",
      url:
          "https://portal.fiocruz.br/noticia/estudo-alerta-sobre-potenciais-riscos-saude-causados-pelo-estresse-termico",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Fatos sobre a Emergência Climática",
      subtitle: "UNEP",
      url:
          "https://www.unep.org/pt-br/explore-topics/climate-change/fatos-sobre-emergencia-climatica",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Como as cidades estão se adaptando para enfrentar a crise climática?",
      subtitle: "Um só planeta",
      url:
          "https://umsoplaneta.globo.com/sociedade/noticia/2024/03/09/como-as-cidades-estao-se-adaptando-para-enfrentar-a-crise-climatica.ghtml",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Impacto das mudanças climáticas na biodiversidade brasileira",
      subtitle: "Correio Braziliense",
      url:
          "https://www.correiobraziliense.com.br/opiniao/2024/03/6819366-impacto-das-mudancas-climaticas-na-biodiversidade-brasileira.html#google_vignette",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Crescimento da dengue está relacionado com desmatamento e crise climática, diz estudo da Fiocruz",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/03/18/crescimento-da-dengue-esta-relacionado-com-desmatamento-e-crise-climatica-diz-estudo-da-fiocruz/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Adaptação das cidades à crise climática exige mudança de paradigma",
      subtitle: "Um só planeta",
      url:
          "https://umsoplaneta.globo.com/clima/noticia/2024/05/19/adaptacao-das-cidades-a-crise-climatica-exige-mudanca-de-paradigma.ghtml",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Produção regenerativa é o caminho para o agro combater as mudanças climáticas, diz pesquisador",
      subtitle: "Globo Rural",
      url:
          "https://globorural.globo.com/entrevista/noticia/2024/06/producao-regenerativa-e-o-caminho-para-o-agro-combater-as-mudancas-climaticas-diz-pesquisador.ghtml",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Seca e vegetação rasteira podem ser o novo normal da Amazônia",
      subtitle: "Metropoles",
      url:
          "https://www.metropoles.com/brasil/seca-e-vegetacao-rasteira-podem-ser-o-novo-normal-da-amazonia",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Brasil em chamas: área queimada entre janeiro e setembro cresceu 150%",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/10/13/brasil-em-chamas-area-queimada-entre-janeiro-e-setembro-cresceu-150/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Gás liquefeito tem grande papel negativo para as mudanças climáticas, mostra estudo",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/10/10/gas-liquefeito-tem-grande-papel-negativo-para-as-mudancas-climaticas-mostra-estudo/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "A urgência e os desafios da transição energética justa",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/10/08/a-urgencia-e-os-desafios-da-transicao-energetica-justa/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "2023 foi o ano mais seco para os rios do planeta em 30 anos, mostra a OMM",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/10/07/2023-foi-o-ano-mais-seco-para-os-rios-do-planeta-em-30-anos-mostra-a-omm/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Crise climática derrete geleiras dos Alpes e faz Suíça e Itália alterarem fronteira",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/10/07/crise-climatica-derrete-geleiras-dos-alpes-e-faz-suica-e-italia-alterarem-fronteira/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Ritmo de aquecimento dos oceanos quase duplicou desde 2005",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/10/01/ritmo-de-aquecimento-dos-oceanos-quase-duplicou-desde-2005/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Apagão em SP mostra incompetência do poder público e das concessionárias em lidar com clima extremo",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/10/15/apagao-em-sp-mostra-incompetencia-do-poder-publico-e-das-concessionarias-em-lidar-com-clima-extremo/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Transição energética: Reino Unido fecha sua última usina térmica a carvão",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/09/30/transicao-energetica-reino-unido-fecha-sua-ultima-usina-termica-a-carvao/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Setembro amarelo: é possível ter saúde mental em um planeta doente?",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/09/25/setembro-amarelo-e-possivel-ter-saude-mental-em-um-planeta-doente/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Brasil em chamas 2: onde o clima extremo encontra o “crime extremo”",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/09/16/brasil-em-chamas-2-onde-o-clima-extremo-encontra-o-crime-extremo/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title:
          "Brasil é o 2º país do mundo onde mais se matou defensores ambientais em 2023",
      subtitle: "ClimaInfo",
      url:
          "https://climainfo.org.br/2024/09/10/brasil-e-o-2o-pais-do-mundo-onde-mais-se-matou-defensores-ambientais-em-2023/",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Por que gênero e clima?",
      subtitle:
          "O infográfico “Por que gênero e clima?” foi construído coletivamente pelo Grupo de Trabalho em Gênero e Clima do Observatório do Clima. O material apresenta informações sobre como o impacto da mudança do clima é sentido de forma diferente pelas mulheres. Apresenta, também, que as mulheres estão pouco representadas nos espaços de tomadas de decisões. Apesar disso, as mulheres já contribuem fortemente para o enfrentamento da emergência climática, mas o reconhecimento é pouco.",
      url: "https://generoeclima.oc.eco.br/infografico-porque-genero-e-clima/",
      type: SuggestionTypeEnum.site,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Dra. Marina Hirota: Mudanças Climáticas e Eventos Extremos",
      subtitle: "Eslen Podcast",
      url: "https://www.youtube.com/watch?v=57LKlCF4KEo",
      type: SuggestionTypeEnum.audio,
      lang: SuggestionLangEnum.pt,
      category: [
        SuggestionCategoryEnum.climateEmergency,
        SuggestionCategoryEnum.environmentalEducation
      ],
    ),
    SuggestionModel(
      title: "Diagnóstico Rural Participativo (DRP)",
      subtitle:
          "O Diagnóstico Rural Participativo (DRP) consiste em um conjunto de técnicas e ferramentas que permite o diagnóstico de uma comunidade a partir da visão dos próprios moradores do local. Os participantes compartilham suas experiências e conhecimentos, permitindo o desenvolvimento de um projeto a partir da realidade dos participantes, baseando-se em seus próprios conceitos e critérios de explicação. Apesar de ter sido criado para as zonas rurais, muitas das técnicas podem ser igualmente trabalhadas em comunidades urbanas. O guia abaixo apresenta algumas técnicas de DRP, além de explicar as características, conceitos e importância do mesmo, evidenciando que a comunidade deve participar do momento diagnóstico e expressar seus pensamentos.",
      url:
          "http://jararaca.ufsm.br/websites/deaer/download/VIVIEN/Texto01/ManualDATER.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.diagnosis],
    ),
    SuggestionModel(
      title: "Captação de Projetos de Temática Ambiental (CAPTA)",
      subtitle:
          "O site Capta é um resultado do projeto Captação de Projetos de Temática Ambiental, e apresenta, de forma dinâmica e de fácil entendimento, informações para a elaboração de projetos de âmbito socioambiental, a partir do Guia de elaboração de pequenos projetos socioambientais para organizações de base comunitária lançado pelo Instituto Sociedade, População e Natureza (ISPN), com apoio do Fundo Brasileiro para a Biodiversidade (Funbio). Inclui informações como: passos para elaboração de um projeto, ferramentas de diagnóstico participativo e estrutura de um projeto. O guia se diferencia, ainda, por apresentar fontes de financiamento, incentivando o proponente do projeto a se inscrever em editais abertos para obter recursos. A publicação completa está disponível para download gratuito, e o site contém a maior parte do conteúdo do livro, além de apresentar um quadro de oportunidades que é atualizado semanalmente, contendo editais abertos nas temáticas de desenvolvimento socioambiental, sendo possível cadastrar seu e-mail para receber notificações de novos editais.",
      url: "https://capta.org.br/",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.project],
    ),
    SuggestionModel(
      title: "Central da COP",
      subtitle:
          "O Site “Central da COP” apresenta informações sobre o clima e a COP utilizando linguagem de futebol.",
      url: "https://centraldacop.oc.eco.br/",
      type: SuggestionTypeEnum.site,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Plataforma Adapta Brasil",
      subtitle:
          "Apresenta índices e indicadores de risco de impactos das mudanças climáticas no Brasil, integrados em uma única plataforma.",
      url: "https://sistema.adaptabrasil.mcti.gov.br/",
      type: SuggestionTypeEnum.site,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Curso de Formação: Educação Ambiental e Crise Climática",
      subtitle: "Youtube",
      url:
          "https://www.youtube.com/watch?v=C7x24nF7LIw&list=PLiQ8tMdXCiXLTNCWhVB8iFj8hffTSU0a1",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "ONU confirma 2024 como o ano mais quente já registrado",
      subtitle: "Nações Unidas Brasil",
      url:
          "https://brasil.un.org/pt-br/287173-onu-confirma-2024-como-o-ano-mais-quente-j%C3%A1-registrado-com-cerca-de-155%C2%B0c-acima-dos-n%C3%ADveis",
      type: SuggestionTypeEnum.news,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Corrida da Herpetofauna contra as mudanças climáticas",
      subtitle:
          "Jogo de tabuleiro onde os jogadores aprendem, de forma interativa, as relações entre ações humanas, mudanças climáticas e impactos na biodiversidade, respondendo perguntas, participando de desafios e buscando a colaboração entre todos para salvar as espécies da extinção e garantir a conservação do Planeta Terra.",
      url: "https://repositorio.inpa.gov.br/handle/1/39612",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Simulação de Efeito Estufa",
      subtitle:
          "Utilize o simulador PhET para ver como a luz e os gases de efeito estufa determinam a temperatura do planeta.",
      url:
          "https://www.energyeducation.ca/encyclopedia/Earth_Temperature_without_GHGs",
      type: SuggestionTypeEnum.game,
      lang: SuggestionLangEnum.en,
      category: [SuggestionCategoryEnum.climateEmergency],
    ),
    SuggestionModel(
      title: "Minuto Ambiental: Educação Ambiental",
      subtitle: "Youtube",
      url: "https://www.youtube.com/watch?v=YgTdDm4FX3c",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Curso de Formação: Educação Ambiental e Crise Climática",
      subtitle: "Youtube",
      url:
          "https://www.youtube.com/watch?v=C7x24nF7LIw&list=PLiQ8tMdXCiXLTNCWhVB8iFj8hffTSU0a1",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "O que é a economia da sociobiodiversidade?",
      subtitle: "Youtube",
      url: "https://www.youtube.com/watch?v=z8UbeIGnkMs&t=204s",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Animação – O homem capitalista",
      subtitle: "Youtube",
      url: "https://www.youtube.com/watch?v=WfGMYdalClU",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "A história das coisas",
      subtitle: "Youtube",
      url: "https://www.youtube.com/watch?v=DfG6MFLZ-VQ",
      type: SuggestionTypeEnum.video,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title:
          "Educação Ambiental e os sete saberes de uma educação do futuro: noções introdutórias",
      subtitle: "",
      url:
          "https://tede.unicentro.br/jspui/bitstream/jspui/1249/3/Produto%20Educacional%20-%20Juliana%20Mara%20Antonio.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "A Educação Ambiental nos materiais e práticas escolares",
      subtitle: "",
      url:
          "https://tede.unicentro.br/jspui/bitstream/jspui/1048/3/Produto-regiane-MF.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Educomunicação socioambiental: no contexto escolar",
      subtitle: "",
      url:
          "https://tede.unicentro.br/jspui/bitstream/tede/547/3/Produto%20educacional_Elizabete.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title:
          "Indivíduo, sociedade e natureza: como refletir, agir e transformar a realidade?",
      subtitle: "",
      url:
          "https://cdn.shopify.com/s/files/1/0490/1715/9829/files/2024_INDIVIDUO_SOCIEDADE_NATUREZA_E-BOOK_C.pdf?v=1738854538",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Histórico da educação ambiental no Brasil e no mundo",
      subtitle: "",
      url:
          "https://repositorio.ufba.br/bitstream/ri/34024/1/eBook-Historico%20da%20educacao%20ambiental%20no%20Brasil%20e%20no%20mundo.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title:
          "As macrotendências político-pedagógicas da educação ambiental brasileira",
      subtitle: "",
      url:
          "https://www.scielo.br/j/asoc/a/8FP6nynhjdZ4hYdqVFdYRtx/?fomat=pdf&lang=pt",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Identidades da Educação Ambiental Brasileira",
      subtitle: "",
      url:
          "https://cursosextensao.usp.br/pluginfile.php/630775/mod_resource/content/4/Identidades%20da%20EA%20brasileira.pdf#page=67",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title:
          "Vamos cuidar do Brasil: conceitos e práticas em educação ambiental na escola",
      subtitle: "",
      url: "https://unesdoc.unesco.org/ark:/48223/pf0000183079",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Educação Ambiental Freiriana",
      subtitle: "",
      url:
          "https://www.researchgate.net/publication/349957130_Educacao_Ambiental_Freiriana",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title:
          "Guia educacional e metodológico: engajamento e participação social no enfrentamento das problemáticas socioambientais",
      subtitle: "",
      url:
          "https://tede.unicentro.br/jspui/bitstream/jspui/2172/3/Produto_Educacional_Mariane.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Política Nacional de Educação Ambiental",
      subtitle: "",
      url: "https://www.planalto.gov.br/ccivil_03/leis/l9795.htm",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Alteração na Política Nacional de Educação Ambiental",
      subtitle: "",
      url:
          "https://www.planalto.gov.br/ccivil_03/_Ato2023-2026/2024/Lei/L14926.htm#art2",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
    SuggestionModel(
      title: "Diretrizes Curriculares para a Educação Ambiental",
      subtitle: "",
      url: "https://portal.mec.gov.br/dmdocuments/rcp002_12.pdf",
      type: SuggestionTypeEnum.text,
      lang: SuggestionLangEnum.pt,
      category: [SuggestionCategoryEnum.environmentalEducation],
    ),
  ];
}
