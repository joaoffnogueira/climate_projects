import 'package:climate_change_projects/features/form/data/models/question_topic_enum.dart';

import '../../data/models/tense_enum.dart';
import '../../../../l10n/localization_context.dart';
import '../../data/models/options_model.dart';
import '../../data/models/question_model.dart';
import '../../data/models/question_type_enum.dart';

class FormDatabinding {
  TenseEnum questionTense = TenseEnum.future;
  Map<int, QuestionModel> defaultForm = {};
  void changeTense(List<int> value) {
    if (value.first == 3) {
      questionTense = TenseEnum.past;
      defaultForm = FormDatabinding(TenseEnum.past).defaultForm;
    } else if (value.first == 2) {
      questionTense = TenseEnum.present;
      defaultForm = FormDatabinding(TenseEnum.present).defaultForm;
    }
  }

  FormDatabinding(TenseEnum questionTense) {
    this.questionTense;
    defaultForm = {
      QuestionTopicEnum.projectPhase.id: QuestionModel(
        id: QuestionTopicEnum.projectPhase.id,
        question: Localization.tr.question1,
        type: QuestionTypeEnum.multipleChoice,
        nextQuestion: (value) {
          changeTense(value);
          return 2;
        },
        options: [
          OptionsModel(id: 1, option: Localization.tr.option1_1),
          OptionsModel(id: 2, option: Localization.tr.option1_2),
          OptionsModel(id: 3, option: Localization.tr.option1_3),
        ],
      ),
      QuestionTopicEnum.communityDiagnosis.id: QuestionModel(
        id: QuestionTopicEnum.communityDiagnosis.id,
        question: Localization.tr.question2,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option2_1(questionTense.name),
              keywords: ['Diagnóstico']),
          OptionsModel(
              id: 2, option: Localization.tr.option2_2(questionTense.name)),
        ],
      ),
      QuestionTopicEnum.whoConductedDiagnosis.id: QuestionModel(
        id: QuestionTopicEnum.whoConductedDiagnosis.id,
        question: Localization.tr.question3(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option3_1,
              keywords: ['Comunidade escolar', 'Participação', 'Engajamento']),
          OptionsModel(
              id: 2,
              option: Localization.tr.option3_2,
              keywords: ['Comunidade escolar', 'Participação', 'Engajamento']),
          OptionsModel(
              id: 3,
              option: Localization.tr.option3_3,
              keywords: ['Comunidade escolar', 'Participação', 'Engajamento']),
          OptionsModel(
              id: 4,
              option: Localization.tr.option3_4,
              keywords: ['Comunidade escolar', 'Participação', 'Engajamento']),
          OptionsModel(
              id: 5,
              option: Localization.tr.option3_5,
              keywords: ['Participação', 'Engajamento']),
        ],
      ),
      QuestionTopicEnum.diagnosisMethods.id: QuestionModel(
        id: QuestionTopicEnum.diagnosisMethods.id,
        question: Localization.tr.question4(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option4_1,
              keywords: ['Observações']),
          OptionsModel(
              id: 2,
              option: Localization.tr.option4_2,
              keywords: ['Pesquisas']),
          OptionsModel(id: 3, option: Localization.tr.option4_3),
          OptionsModel(id: 4, option: Localization.tr.option4_4),
          OptionsModel(id: 5, option: Localization.tr.option4_5),
        ],
      ),
      QuestionTopicEnum.diagnosisFocus.id: QuestionModel(
        id: QuestionTopicEnum.diagnosisFocus.id,
        question: Localization.tr.question5(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option5_1,
              keywords: ['Problemas ambientais']),
          OptionsModel(
              id: 2,
              option: Localization.tr.option5_2,
              keywords: ['Comunidade']),
          OptionsModel(
              id: 3,
              option: Localization.tr.option5_3,
              keywords: ['Percepções']),
          OptionsModel(id: 4, option: Localization.tr.option5_4),
        ],
      ),
      QuestionTopicEnum.diagnosisIncorporation.id: QuestionModel(
        id: QuestionTopicEnum.diagnosisIncorporation.id,
        question: Localization.tr.question6(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option6_1(questionTense.name)),
          OptionsModel(
              id: 2, option: Localization.tr.option6_2(questionTense.name)),
          OptionsModel(
              id: 3, option: Localization.tr.option6_3(questionTense.name)),
        ],
      ),
      QuestionTopicEnum.projectParticipants.id: QuestionModel(
        id: QuestionTopicEnum.projectParticipants.id,
        question: Localization.tr.question7(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option7_1,
              keywords: ['Participação', 'Engajamento']),
          OptionsModel(
              id: 2,
              option: Localization.tr.option7_2,
              keywords: ['Participação', 'Engajamento']),
          OptionsModel(
              id: 3,
              option: Localization.tr.option7_3,
              keywords: ['Participação', 'Engajamento']),
          OptionsModel(
              id: 4,
              option: Localization.tr.option7_4,
              keywords: ['Participação', 'Engajamento']),
          OptionsModel(
              id: 5,
              option: Localization.tr.option7_5,
              keywords: ['Comunidade']),
          OptionsModel(
              id: 6,
              option: Localization.tr.option7_6,
              keywords: ['Participação', 'Engajamento']),
        ],
      ),
      QuestionTopicEnum.intersectoralCollaboration.id: QuestionModel(
        id: QuestionTopicEnum.intersectoralCollaboration.id,
        question: Localization.tr.question8(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option8_1,
              keywords: ['Participação', 'Colaboração']),
          OptionsModel(id: 2, option: Localization.tr.option8_2),
        ],
      ),
      QuestionTopicEnum.collaborationParticipants.id: QuestionModel(
        id: QuestionTopicEnum.collaborationParticipants.id,
        question: Localization.tr.question9(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option9_1,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
          OptionsModel(
              id: 2,
              option: Localization.tr.option9_2,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
          OptionsModel(
              id: 3,
              option: Localization.tr.option9_3,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
          OptionsModel(
              id: 4,
              option: Localization.tr.option9_4,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
          OptionsModel(
              id: 5,
              option: Localization.tr.option9_5,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
          OptionsModel(
              id: 6,
              option: Localization.tr.option9_6,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
          OptionsModel(
              id: 7,
              option: Localization.tr.option9_7,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
          OptionsModel(
              id: 8,
              option: Localization.tr.option9_8,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
          OptionsModel(
              id: 9,
              option: Localization.tr.option9_9,
              keywords: ['Participação', 'Engajamento', 'Colaboração']),
        ],
      ),
      QuestionTopicEnum.participationMethods.id: QuestionModel(
        id: QuestionTopicEnum.participationMethods.id,
        question: Localization.tr.question10(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option10_1),
          OptionsModel(id: 2, option: Localization.tr.option10_2),
          OptionsModel(
              id: 3,
              option: Localization.tr.option10_3,
              keywords: ['Palestras', 'Workshops', 'Formação']),
          OptionsModel(id: 4, option: Localization.tr.option10_4),
          OptionsModel(id: 5, option: Localization.tr.option10_5),
        ],
      ),
      QuestionTopicEnum.climateEmergencyThemes.id: QuestionModel(
        id: QuestionTopicEnum.climateEmergencyThemes.id,
        question: Localization.tr.question11(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option11_1,
              keywords: ['Complexidade', 'Causas', 'Consequências']),
          OptionsModel(
              id: 2,
              option: Localization.tr.option11_2,
              keywords: ['Complexidade', 'Enfrentamento']),
          OptionsModel(
              id: 3,
              option: Localization.tr.option11_3,
              keywords: ['Complexidade', 'Políticas públicas']),
          OptionsModel(
              id: 4,
              option: Localization.tr.option11_4,
              keywords: ['Complexidade', 'Educação']),
          OptionsModel(
              id: 5,
              option: Localization.tr.option11_5,
              keywords: ['Complexidade']),
        ],
      ),
      QuestionTopicEnum.projectDimensions.id: QuestionModel(
        id: QuestionTopicEnum.projectDimensions.id,
        question: Localization.tr.question12(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option12_1,
              keywords: ['Complexidade', 'Política']),
          OptionsModel(
              id: 2,
              option: Localization.tr.option12_2,
              keywords: ['Complexidade', 'Economia']),
          OptionsModel(
              id: 3,
              option: Localization.tr.option12_3,
              keywords: ['Complexidade', 'Social']),
          OptionsModel(
              id: 4,
              option: Localization.tr.option12_4,
              keywords: ['Complexidade', 'Cultura']),
          OptionsModel(
              id: 5,
              option: Localization.tr.option12_5,
              keywords: ['Complexidade', 'Ética']),
          OptionsModel(
              id: 6,
              option: Localization.tr.option12_6,
              keywords: ['Complexidade', 'Natural']),
          OptionsModel(
              id: 7,
              option: Localization.tr.option12_7,
              keywords: ['Complexidade', 'Indivíduo']),
          OptionsModel(
              id: 8,
              option: Localization.tr.option12_8,
              keywords: ['Complexidade', 'Arte']),
          OptionsModel(
              id: 9,
              option: Localization.tr.option12_9,
              keywords: ['Complexidade', 'História']),
        ],
      ),
      QuestionTopicEnum.politicalAspects.id: QuestionModel(
        id: QuestionTopicEnum.politicalAspects.id,
        question: Localization.tr.question13(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option13_1, keywords: [
            'Políticas públicas',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option13_2),
          OptionsModel(id: 3, option: Localization.tr.option13_3, keywords: [
            'Governança',
          ]),
        ],
      ),
      QuestionTopicEnum.economicAspects.id: QuestionModel(
        id: QuestionTopicEnum.economicAspects.id,
        question: Localization.tr.question14(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option14_1,
              optionTip: Localization.tr.option_tip_14_1,
              keywords: [
                'Alternativas econômicas',
              ]),
          OptionsModel(id: 2, option: Localization.tr.option14_2, keywords: [
            'Impactos econômicos',
          ]),
          OptionsModel(
            id: 3,
            option: Localization.tr.option14_3,
            optionTip: Localization.tr.option_tip_14_2,
          ),
          OptionsModel(
            id: 4,
            option: Localization.tr.option14_4,
            optionTip: Localization.tr.option_tip_14_3,
          ),
        ],
      ),
      QuestionTopicEnum.socialAspects.id: QuestionModel(
        id: QuestionTopicEnum.socialAspects.id,
        question: Localization.tr.question15(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option15_1,
              optionTip: Localization.tr.option_tip_15,
              keywords: [
                'Equidade',
              ]),
          OptionsModel(id: 2, option: Localization.tr.option15_2, keywords: [
            'Vulnerabilidade',
          ]),
          OptionsModel(id: 3, option: Localization.tr.option15_3, keywords: [
            'Engajamento',
          ]),
        ],
      ),
      QuestionTopicEnum.culturalAspects.id: QuestionModel(
        id: QuestionTopicEnum.culturalAspects.id,
        question: Localization.tr.question16(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option16_1, keywords: [
            'Diversidade',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option16_2),
          OptionsModel(id: 3, option: Localization.tr.option16_3),
        ],
      ),
      QuestionTopicEnum.ethicalAspects.id: QuestionModel(
        id: QuestionTopicEnum.ethicalAspects.id,
        question: Localization.tr.question17(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option17_1,
              keywords: ['Responsabilidade', 'Ética']),
          OptionsModel(
              id: 2, option: Localization.tr.option17_2, keywords: ['Dilemas']),
        ],
      ),
      QuestionTopicEnum.naturalAspects.id: QuestionModel(
        id: QuestionTopicEnum.naturalAspects.id,
        question: Localization.tr.question18(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option18_1, keywords: [
            'Biodiversidade',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option18_2),
          OptionsModel(id: 3, option: Localization.tr.option18_3),
          OptionsModel(id: 4, option: Localization.tr.option18_4),
          OptionsModel(id: 5, option: Localization.tr.option18_5),
          OptionsModel(
              id: 6,
              option: Localization.tr.option18_6,
              optionTip: Localization.tr.option_tip_18,
              keywords: [
                'Desastres',
              ]),
        ],
      ),
      QuestionTopicEnum.individualAspects.id: QuestionModel(
        id: QuestionTopicEnum.individualAspects.id,
        question: Localization.tr.question19(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option19_1),
          OptionsModel(id: 2, option: Localization.tr.option19_2, keywords: [
            'Mudança',
          ]),
          OptionsModel(id: 3, option: Localization.tr.option19_3, keywords: [
            'Valorização',
          ]),
          OptionsModel(id: 4, option: Localization.tr.option19_4, keywords: [
            'Saúde',
          ]),
          OptionsModel(id: 5, option: Localization.tr.option19_5, keywords: [
            'Saúde',
          ]),
        ],
      ),
      QuestionTopicEnum.artisticAspects.id: QuestionModel(
        id: QuestionTopicEnum.artisticAspects.id,
        question: Localization.tr.question20(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option20_1, keywords: [
            'Arte',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option20_2),
          OptionsModel(id: 3, option: Localization.tr.option20_3),
        ],
      ),
      QuestionTopicEnum.historicalAspects.id: QuestionModel(
        id: QuestionTopicEnum.historicalAspects.id,
        question: Localization.tr.question21(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option21_1, keywords: [
            'Contextualização',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option21_2),
          OptionsModel(id: 3, option: Localization.tr.option21_3),
        ],
      ),
      QuestionTopicEnum.valuesAddressed.id: QuestionModel(
        id: QuestionTopicEnum.valuesAddressed.id,
        question: Localization.tr.question22(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option22_1, keywords: [
            'Respeito',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option22_2, keywords: [
            'Solidariedade',
          ]),
          OptionsModel(id: 3, option: Localization.tr.option22_3, keywords: [
            'Justiça',
            'Equidade',
          ]),
          OptionsModel(id: 4, option: Localization.tr.option22_4, keywords: [
            'Sustentabilidade',
          ]),
          OptionsModel(id: 5, option: Localization.tr.option22_5, keywords: [
            'Consumo consciente',
          ]),
          OptionsModel(id: 6, option: Localization.tr.option22_6, keywords: [
            'Responsabilidade',
          ]),
          OptionsModel(id: 7, option: Localization.tr.option22_7, keywords: [
            'Cidadania',
          ]),
          OptionsModel(id: 8, option: Localization.tr.option22_8),
          OptionsModel(id: 9, option: Localization.tr.option22_9),
        ],
      ),
      QuestionTopicEnum.prevailingEmotions.id: QuestionModel(
        id: QuestionTopicEnum.prevailingEmotions.id,
        question: Localization.tr.question23,
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option23_1, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option23_2, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 3, option: Localization.tr.option23_3, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 4, option: Localization.tr.option23_4, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 5, option: Localization.tr.option23_5, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 6, option: Localization.tr.option23_6, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 7, option: Localization.tr.option23_7, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 8, option: Localization.tr.option23_8, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 9, option: Localization.tr.option23_9, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 10, option: Localization.tr.option23_10, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 11, option: Localization.tr.option23_11, keywords: [
            'Emoções',
          ]),
          OptionsModel(id: 12, option: Localization.tr.option23_12, keywords: [
            'Emoções',
          ]),
        ],
      ),
      QuestionTopicEnum.environmentalConnection.id: QuestionModel(
        id: QuestionTopicEnum.environmentalConnection.id,
        question: Localization.tr.question24(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option24_1, keywords: [
            'Conexão',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option24_2),
        ],
      ),
      QuestionTopicEnum.howEnvironmentalConnection.id: QuestionModel(
        id: QuestionTopicEnum.howEnvironmentalConnection.id,
        question: Localization.tr.question25(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option25_1, keywords: [
            'Conexão',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option25_2, keywords: [
            'Conexão',
          ]),
          OptionsModel(id: 3, option: Localization.tr.option25_3, keywords: [
            'Conexão',
          ]),
          OptionsModel(id: 4, option: Localization.tr.option25_4, keywords: [
            'Conexão',
          ]),
          OptionsModel(id: 5, option: Localization.tr.option25_5, keywords: [
            'Conexão',
          ]),
        ],
      ),
      QuestionTopicEnum.toolsUsed.id: QuestionModel(
        id: QuestionTopicEnum.toolsUsed.id,
        question: Localization.tr.question26(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option26_1),
          OptionsModel(id: 2, option: Localization.tr.option26_2, keywords: [
            'Atividades práticas',
          ]),
          OptionsModel(id: 3, option: Localization.tr.option26_3, keywords: [
            'Tecnologias',
          ]),
          OptionsModel(id: 4, option: Localization.tr.option26_4, keywords: [
            'Colaboração',
          ]),
          OptionsModel(id: 5, option: Localization.tr.option26_5),
        ],
      ),
      QuestionTopicEnum.projectActivities.id: QuestionModel(
        id: QuestionTopicEnum.projectActivities.id,
        question: Localization.tr.question27(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option27_1, keywords: [
            'Debate',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option27_2),
          OptionsModel(id: 3, option: Localization.tr.option27_3, keywords: [
            'Reflexão',
          ]),
          OptionsModel(id: 4, option: Localization.tr.option27_4),
          OptionsModel(id: 5, option: Localization.tr.option27_5),
        ],
      ),
      QuestionTopicEnum.knowledgeAreas.id: QuestionModel(
        id: QuestionTopicEnum.knowledgeAreas.id,
        question: Localization.tr.question28(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option28_1, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option28_2, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 3, option: Localization.tr.option28_3, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 4, option: Localization.tr.option28_4, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 5, option: Localization.tr.option28_5, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 6, option: Localization.tr.option28_6, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 7, option: Localization.tr.option28_7, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 8, option: Localization.tr.option28_8, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 9, option: Localization.tr.option28_9, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
          OptionsModel(id: 10, option: Localization.tr.option28_10, keywords: [
            'Complexidade',
            'Integração',
            'Interdisciplinaridade',
          ]),
        ],
      ),
      QuestionTopicEnum.integrationMethods.id: QuestionModel(
        id: QuestionTopicEnum.integrationMethods.id,
        question: Localization.tr.question29(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1,
              option: Localization.tr.option29_1,
              keywords: ['Integração']),
          OptionsModel(
              id: 2,
              option: Localization.tr.option29_2,
              keywords: ['Integração']),
          OptionsModel(
              id: 3,
              option: Localization.tr.option29_3,
              keywords: ['Integração']),
        ],
      ),
      QuestionTopicEnum.specificProjectDifficulties.id: QuestionModel(
        id: QuestionTopicEnum.specificProjectDifficulties.id,
        question: Localization.tr.question30,
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option30_1, keywords: [
            'Dificuldades',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option30_2, keywords: [
            'Dificuldades',
          ]),
          OptionsModel(id: 3, option: Localization.tr.option30_3, keywords: [
            'Dificuldades',
          ]),
          OptionsModel(id: 4, option: Localization.tr.option30_4, keywords: [
            'Dificuldades',
          ]),
          OptionsModel(id: 5, option: Localization.tr.option30_5, keywords: [
            'Dificuldades',
          ]),
          OptionsModel(id: 6, option: Localization.tr.option30_6, keywords: [
            'Dificuldades',
          ]),
          OptionsModel(id: 7, option: Localization.tr.option30_7, keywords: [
            'Dificuldades',
          ]),
          OptionsModel(id: 8, option: Localization.tr.option30_8, keywords: [
            'Dificuldades',
          ]),
          OptionsModel(id: 9, option: Localization.tr.option30_9, keywords: [
            'Dificuldades',
          ]),
        ],
      ),
      QuestionTopicEnum.evaluationsConducted.id: QuestionModel(
        id: QuestionTopicEnum.evaluationsConducted.id,
        question: Localization.tr.question31(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option31_1, keywords: [
            'Avaliação',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option31_2),
        ],
      ),
      QuestionTopicEnum.selfEvaluation.id: QuestionModel(
        id: QuestionTopicEnum.selfEvaluation.id,
        question: Localization.tr.question32(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option32_1, keywords: [
            'Autoavaliação',
          ]),
          OptionsModel(id: 2, option: Localization.tr.option32_2),
        ],
      ),
      QuestionTopicEnum.newIdeas.id: QuestionModel(
        id: QuestionTopicEnum.newIdeas.id,
        question: Localization.tr.question33,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option33_1),
          OptionsModel(id: 2, option: Localization.tr.option33_2),
        ],
      ),
      QuestionTopicEnum.shareResponses.id: QuestionModel(
        id: QuestionTopicEnum.shareResponses.id,
        question: Localization.tr.question34,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option34_1),
          OptionsModel(id: 2, option: Localization.tr.option34_2),
        ],
      ),
      QuestionTopicEnum.suggestions.id: QuestionModel(
        id: QuestionTopicEnum.suggestions.id,
        question: Localization.tr.question35,
        type: QuestionTypeEnum.text,
        options: [OptionsModel(id: 1, option: '')],
      ),
    };
  }
}
