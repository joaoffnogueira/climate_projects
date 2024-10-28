import 'package:climate_change_projects/features/form/data/models/question_topic_enum.dart';

import '../../data/models/tense_enum.dart';
import '../../../../l10n/localization_context.dart';
import '../../data/models/options_model.dart';
import '../../data/models/question_model.dart';
import '../../data/models/question_type_enum.dart';

class FormDatabinding {
  TenseEnum questionTense = TenseEnum.future;
  List<QuestionModel> defaultForm = [];
  void changeTense(List<int> value) {
    if (value.first == 3) {
      questionTense = TenseEnum.past;
      defaultForm = FormDatabinding(TenseEnum.past).defaultForm;
    }
  }

  FormDatabinding(TenseEnum questionTense) {
    this.questionTense;
    defaultForm = [
      QuestionModel(
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
      QuestionModel(
        id: QuestionTopicEnum.communityDiagnosis.id,
        question: Localization.tr.question2,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option2_1(questionTense.name)),
          OptionsModel(
              id: 2, option: Localization.tr.option2_2(questionTense.name)),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.whoConductedDiagnosis.id,
        question: Localization.tr.question3(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option3_1),
          OptionsModel(id: 2, option: Localization.tr.option3_2),
          OptionsModel(id: 3, option: Localization.tr.option3_3),
          OptionsModel(id: 4, option: Localization.tr.option3_4),
          OptionsModel(id: 5, option: Localization.tr.option3_5),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.diagnosisMethods.id,
        question: Localization.tr.question4(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option4_1),
          OptionsModel(id: 2, option: Localization.tr.option4_2),
          OptionsModel(id: 3, option: Localization.tr.option4_3),
          OptionsModel(id: 4, option: Localization.tr.option4_4),
          OptionsModel(id: 5, option: Localization.tr.option4_5),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.diagnosisFocus.id,
        question: Localization.tr.question5(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option5_1),
          OptionsModel(id: 2, option: Localization.tr.option5_2),
          OptionsModel(id: 3, option: Localization.tr.option5_3),
          OptionsModel(id: 4, option: Localization.tr.option5_4),
        ],
      ),
      QuestionModel(
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
      QuestionModel(
        id: QuestionTopicEnum.projectParticipants.id,
        question: Localization.tr.question7(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option7_1),
          OptionsModel(id: 2, option: Localization.tr.option7_2),
          OptionsModel(id: 3, option: Localization.tr.option7_3),
          OptionsModel(id: 4, option: Localization.tr.option7_4),
          OptionsModel(id: 5, option: Localization.tr.option7_5),
          OptionsModel(id: 6, option: Localization.tr.option7_6),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.intersectoralCollaboration.id,
        question: Localization.tr.question8(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        nextQuestion: (value) {
          if (value.first == 2) {
            return 15;
          }
          return 10;
        },
        options: [
          OptionsModel(id: 1, option: Localization.tr.option8_1),
          OptionsModel(id: 2, option: Localization.tr.option8_2),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.collaborationParticipants.id,
        question: Localization.tr.question9(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option9_1),
          OptionsModel(id: 2, option: Localization.tr.option9_2),
          OptionsModel(id: 3, option: Localization.tr.option9_3),
          OptionsModel(id: 4, option: Localization.tr.option9_4),
          OptionsModel(id: 5, option: Localization.tr.option9_5),
          OptionsModel(id: 6, option: Localization.tr.option9_6),
          OptionsModel(id: 7, option: Localization.tr.option9_7),
          OptionsModel(id: 8, option: Localization.tr.option9_8),
          OptionsModel(id: 9, option: Localization.tr.option9_9),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.participationMethods.id,
        question: Localization.tr.question10(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option10_1),
          OptionsModel(id: 2, option: Localization.tr.option10_2),
          OptionsModel(id: 3, option: Localization.tr.option10_3),
          OptionsModel(id: 4, option: Localization.tr.option10_4),
          OptionsModel(id: 5, option: Localization.tr.option10_5),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.climateEmergencyThemes.id,
        question: Localization.tr.question11(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option11_1),
          OptionsModel(id: 2, option: Localization.tr.option11_2),
          OptionsModel(id: 3, option: Localization.tr.option11_3),
          OptionsModel(id: 4, option: Localization.tr.option11_4),
          OptionsModel(id: 5, option: Localization.tr.option11_5),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.projectDimensions.id,
        question: Localization.tr.question12(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option12_1),
          OptionsModel(id: 2, option: Localization.tr.option12_2),
          OptionsModel(id: 3, option: Localization.tr.option12_3),
          OptionsModel(id: 4, option: Localization.tr.option12_4),
          OptionsModel(id: 5, option: Localization.tr.option12_5),
          OptionsModel(id: 6, option: Localization.tr.option12_6),
          OptionsModel(id: 7, option: Localization.tr.option12_7),
          OptionsModel(id: 8, option: Localization.tr.option12_8),
          OptionsModel(id: 9, option: Localization.tr.option12_9),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.politicalAspects.id,
        question: Localization.tr.question13(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option13_1),
          OptionsModel(id: 2, option: Localization.tr.option13_2),
          OptionsModel(id: 3, option: Localization.tr.option13_3),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.economicAspects.id,
        question: Localization.tr.question14(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option14_1),
          OptionsModel(id: 2, option: Localization.tr.option14_2),
          OptionsModel(id: 3, option: Localization.tr.option14_3),
          OptionsModel(id: 4, option: Localization.tr.option14_4),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.socialAspects.id,
        question: Localization.tr.question15(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option15_1),
          OptionsModel(id: 2, option: Localization.tr.option15_2),
          OptionsModel(id: 3, option: Localization.tr.option15_3),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.culturalAspects.id,
        question: Localization.tr.question16(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option16_1),
          OptionsModel(id: 2, option: Localization.tr.option16_2),
          OptionsModel(id: 3, option: Localization.tr.option16_3),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.ethicalAspects.id,
        question: Localization.tr.question17(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option17_1),
          OptionsModel(id: 2, option: Localization.tr.option17_2),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.naturalAspects.id,
        question: Localization.tr.question18(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option18_1),
          OptionsModel(id: 2, option: Localization.tr.option18_2),
          OptionsModel(id: 3, option: Localization.tr.option18_3),
          OptionsModel(id: 4, option: Localization.tr.option18_4),
          OptionsModel(id: 5, option: Localization.tr.option18_5),
          OptionsModel(id: 6, option: Localization.tr.option18_6),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.individualAspects.id,
        question: Localization.tr.question19(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option19_1),
          OptionsModel(id: 2, option: Localization.tr.option19_2),
          OptionsModel(id: 3, option: Localization.tr.option19_3),
          OptionsModel(id: 4, option: Localization.tr.option19_4),
          OptionsModel(id: 5, option: Localization.tr.option19_5),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.artisticAspects.id,
        question: Localization.tr.question20(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option20_1),
          OptionsModel(id: 2, option: Localization.tr.option20_2),
          OptionsModel(id: 3, option: Localization.tr.option20_3),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.historicalAspects.id,
        question: Localization.tr.question21(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option21_1),
          OptionsModel(id: 2, option: Localization.tr.option21_2),
          OptionsModel(id: 3, option: Localization.tr.option21_3),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.valuesAddressed.id,
        question: Localization.tr.question22(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option22_1),
          OptionsModel(id: 2, option: Localization.tr.option22_2),
          OptionsModel(id: 3, option: Localization.tr.option22_3),
          OptionsModel(id: 4, option: Localization.tr.option22_4),
          OptionsModel(id: 5, option: Localization.tr.option22_5),
          OptionsModel(id: 6, option: Localization.tr.option22_6),
          OptionsModel(id: 7, option: Localization.tr.option22_7),
          OptionsModel(id: 8, option: Localization.tr.option22_8),
          OptionsModel(id: 9, option: Localization.tr.option22_9),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.prevailingEmotions.id,
        question: Localization.tr.question23,
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option23_1),
          OptionsModel(id: 2, option: Localization.tr.option23_2),
          OptionsModel(id: 3, option: Localization.tr.option23_3),
          OptionsModel(id: 4, option: Localization.tr.option23_4),
          OptionsModel(id: 5, option: Localization.tr.option23_5),
          OptionsModel(id: 6, option: Localization.tr.option23_6),
          OptionsModel(id: 7, option: Localization.tr.option23_7),
          OptionsModel(id: 8, option: Localization.tr.option23_8),
          OptionsModel(id: 9, option: Localization.tr.option23_9),
          OptionsModel(id: 10, option: Localization.tr.option23_10),
          OptionsModel(id: 11, option: Localization.tr.option23_11),
          OptionsModel(id: 12, option: Localization.tr.option23_12),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.environmentalConnection.id,
        question: Localization.tr.question24(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        nextQuestion: (value) {
          if (value.first == 2) {
            return 32;
          }
          return 31;
        },
        options: [
          OptionsModel(id: 1, option: Localization.tr.option24_1),
          OptionsModel(id: 2, option: Localization.tr.option24_2),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.howEnvironmentalConnection.id,
        question: Localization.tr.question25(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option25_1),
          OptionsModel(id: 2, option: Localization.tr.option25_2),
          OptionsModel(id: 3, option: Localization.tr.option25_3),
          OptionsModel(id: 4, option: Localization.tr.option25_4),
          OptionsModel(id: 5, option: Localization.tr.option25_5),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.toolsUsed.id,
        question: Localization.tr.question26(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option26_1),
          OptionsModel(id: 2, option: Localization.tr.option26_2),
          OptionsModel(id: 3, option: Localization.tr.option26_3),
          OptionsModel(id: 4, option: Localization.tr.option26_4),
          OptionsModel(id: 5, option: Localization.tr.option26_5),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.projectActivities.id,
        question: Localization.tr.question27(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option27_1),
          OptionsModel(id: 2, option: Localization.tr.option27_2),
          OptionsModel(id: 3, option: Localization.tr.option27_3),
          OptionsModel(id: 4, option: Localization.tr.option27_4),
          OptionsModel(id: 5, option: Localization.tr.option27_5),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.knowledgeAreas.id,
        question: Localization.tr.question28(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option28_1),
          OptionsModel(id: 2, option: Localization.tr.option28_2),
          OptionsModel(id: 3, option: Localization.tr.option28_3),
          OptionsModel(id: 4, option: Localization.tr.option28_4),
          OptionsModel(id: 5, option: Localization.tr.option28_5),
          OptionsModel(id: 6, option: Localization.tr.option28_6),
          OptionsModel(id: 7, option: Localization.tr.option28_7),
          OptionsModel(id: 8, option: Localization.tr.option28_8),
          OptionsModel(id: 9, option: Localization.tr.option28_9),
          OptionsModel(id: 10, option: Localization.tr.option28_10),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.integrationMethods.id,
        question: Localization.tr.question29(questionTense.name),
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option29_1),
          OptionsModel(id: 2, option: Localization.tr.option29_2),
          OptionsModel(id: 3, option: Localization.tr.option29_3),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.specificProjectDifficulties.id,
        question: Localization.tr.question30,
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option30_1),
          OptionsModel(id: 2, option: Localization.tr.option30_2),
          OptionsModel(id: 3, option: Localization.tr.option30_3),
          OptionsModel(id: 4, option: Localization.tr.option30_4),
          OptionsModel(id: 5, option: Localization.tr.option30_5),
          OptionsModel(id: 6, option: Localization.tr.option30_6),
          OptionsModel(id: 7, option: Localization.tr.option30_7),
          OptionsModel(id: 8, option: Localization.tr.option30_8),
          OptionsModel(id: 9, option: Localization.tr.option30_9),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.evaluationsConducted.id,
        question: Localization.tr.question31(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option31_1),
          OptionsModel(id: 2, option: Localization.tr.option31_2),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.selfEvaluation.id,
        question: Localization.tr.question32(questionTense.name),
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option32_1),
          OptionsModel(id: 2, option: Localization.tr.option32_2),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.newIdeas.id,
        question: Localization.tr.question33,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option33_1),
          OptionsModel(id: 2, option: Localization.tr.option33_2),
        ],
      ),
      QuestionModel(
        id: QuestionTopicEnum.shareResponses.id,
        question: Localization.tr.question34,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option34_1),
          OptionsModel(id: 2, option: Localization.tr.option34_2),
        ],
      ),
    ];
  }
}
