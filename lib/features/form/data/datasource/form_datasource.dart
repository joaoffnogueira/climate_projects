import 'package:appea/l10n/localization_context.dart';
import 'package:appea/models/options_model.dart';
import 'package:appea/models/question_model.dart';
import 'package:appea/models/question_type_enum.dart';

class FormDatasource {
  List<QuestionModel> getQuestions() {
    return [
      QuestionModel(
        id: 1,
        question: Localization.tr.question1,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option1_1),
          OptionsModel(
              id: 2, option: Localization.tr.option1_2),
          OptionsModel(
              id: 3, option: Localization.tr.option1_3),
        ],
      ),
      QuestionModel(
        id: 2,
        question: Localization.tr.question2,
        type: QuestionTypeEnum.multipleResponse,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option2_1),
          OptionsModel(
              id: 2, option: Localization.tr.option2_2),
        ],
      ),
      QuestionModel(
        id: 3,
        question: Localization.tr.question3,
        type: QuestionTypeEnum.text,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option3_1),
          OptionsModel(
              id: 2, option: Localization.tr.option3_2),
          OptionsModel(
              id: 3, option: Localization.tr.option3_3),
          OptionsModel(
              id: 4, option: Localization.tr.option3_4),
          OptionsModel(
              id: 5, option: Localization.tr.option3_5),
        ],
      ),
      QuestionModel(
        id: 4,
        question: Localization.tr.question4,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option4_1),
          OptionsModel(
              id: 2, option: Localization.tr.option4_2),
          OptionsModel(
              id: 3, option: Localization.tr.option4_3),
          OptionsModel(
              id: 4, option: Localization.tr.option4_4),
          OptionsModel(
              id: 5, option: Localization.tr.option4_5),
        ],
      ),
      QuestionModel(
        id: 5,
        question: Localization.tr.question5,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option5_1),
          OptionsModel(
              id: 2, option: Localization.tr.option5_2),
          OptionsModel(
              id: 3, option: Localization.tr.option5_3),
          OptionsModel(
              id: 4, option: Localization.tr.option5_4),
        ],
      ),
      QuestionModel(
        id: 6,
        question: Localization.tr.question6,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option6_1),
          OptionsModel(
              id: 2, option: Localization.tr.option6_2),
          OptionsModel(
              id: 3, option: Localization.tr.option6_3),
        ],
      ),
      QuestionModel(
        id: 7,
        question: Localization.tr.question7,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option7_1),
          OptionsModel(
              id: 2, option: Localization.tr.option7_2),
        ],
      ),
      QuestionModel(
        id: 8,
        question: Localization.tr.question8,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option8_1),
          OptionsModel(
              id: 2, option: Localization.tr.option8_2),
          OptionsModel(
              id: 3, option: Localization.tr.option8_3),
          OptionsModel(
              id: 4, option: Localization.tr.option8_4),
          OptionsModel(
              id: 5, option: Localization.tr.option8_5),
          OptionsModel(
              id: 6, option: Localization.tr.option8_6),
        ],
      ),
      QuestionModel(
        id: 9,
        question: Localization.tr.question9,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option9_1),
          OptionsModel(
              id: 2, option: Localization.tr.option9_2),
        ],
      ),
      QuestionModel(
        id: 10,
        question: Localization.tr.question10,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option10_1),
            OptionsModel(
              id: 2, option: Localization.tr.option10_2),
            OptionsModel(
              id: 3, option: Localization.tr.option10_3),
            OptionsModel(
              id: 4, option: Localization.tr.option10_4),
            OptionsModel(
              id: 5, option: Localization.tr.option10_5),
            OptionsModel(
              id: 6, option: Localization.tr.option10_6),
            OptionsModel(
              id: 7, option: Localization.tr.option10_7),
            OptionsModel(
              id: 8, option: Localization.tr.option10_8),
            OptionsModel(
              id: 9, option: Localization.tr.option10_9),
        ],
      ),
      QuestionModel(
        id: 11,
        question: Localization.tr.question11,
        type: QuestionTypeEnum.multipleChoice,
        options: [
            OptionsModel(
              id: 1, option: Localization.tr.option11_1),
            OptionsModel(
              id: 2, option: Localization.tr.option11_2),
        ],
      ),
      QuestionModel(
        id: 12,
        question: Localization.tr.question12,
        type: QuestionTypeEnum.multipleChoice,
        options: [
            OptionsModel(
              id: 1, option: Localization.tr.option12_1),
            OptionsModel(
              id: 2, option: Localization.tr.option12_2),
            OptionsModel(
              id: 3, option: Localization.tr.option12_3),
            OptionsModel(
              id: 4, option: Localization.tr.option12_4),
            OptionsModel(
              id: 5, option: Localization.tr.option12_5),
        ],
      ),
      QuestionModel(
        id: 13,
        question: Localization.tr.question13,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option13_1, nextQuestion: 14),
          OptionsModel(
              id: 2, option: Localization.tr.option13_2, nextQuestion: 14),
        ],
      ),
      QuestionModel(
        id: 14,
        question: Localization.tr.question14,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option14_1, nextQuestion: 15),
          OptionsModel(
              id: 2, option: Localization.tr.option14_2, nextQuestion: 15),
          OptionsModel(
              id: 3, option: Localization.tr.option14_3, nextQuestion: 15),
          OptionsModel(
              id: 4, option: Localization.tr.option14_4, nextQuestion: 15),
          OptionsModel(
              id: 5, option: Localization.tr.option14_5, nextQuestion: 15),
        ],
      ),
      QuestionModel(
        id: 15,
        question: Localization.tr.question15,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option15_1, nextQuestion: 16),
          OptionsModel(
              id: 2, option: Localization.tr.option15_2, nextQuestion: 16),
          OptionsModel(
              id: 3, option: Localization.tr.option15_3, nextQuestion: 16),
          OptionsModel(
              id: 4, option: Localization.tr.option15_4, nextQuestion: 16),
          OptionsModel(
              id: 5, option: Localization.tr.option15_5, nextQuestion: 16),
        ],
      ),
      QuestionModel(
        id: 16,
        question: Localization.tr.question16,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option16_1, nextQuestion: 17),
          OptionsModel(
              id: 2, option: Localization.tr.option16_2, nextQuestion: 17),
          OptionsModel(
              id: 3, option: Localization.tr.option16_3, nextQuestion: 17),
          OptionsModel(
              id: 4, option: Localization.tr.option16_4, nextQuestion: 17),
          OptionsModel(
              id: 5, option: Localization.tr.option16_5, nextQuestion: 17),
          OptionsModel(
              id: 6, option: Localization.tr.option16_6, nextQuestion: 17),
          OptionsModel(
              id: 7, option: Localization.tr.option16_7, nextQuestion: 17),
          OptionsModel(
              id: 8, option: Localization.tr.option16_8, nextQuestion: 17),
          OptionsModel(
              id: 9, option: Localization.tr.option16_9, nextQuestion: 17),
        ],
      ),
      QuestionModel(
        id: 17,
        question: Localization.tr.question17,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option17_1, nextQuestion: 18),
          OptionsModel(
              id: 2, option: Localization.tr.option17_2, nextQuestion: 18),
          OptionsModel(
              id: 3, option: Localization.tr.option17_3, nextQuestion: 18),
        ],
      ),
      QuestionModel(
        id: 18,
        question: Localization.tr.question18,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option18_1, nextQuestion: 19),
          OptionsModel(
              id: 2, option: Localization.tr.option18_2, nextQuestion: 19),
          OptionsModel(
              id: 3, option: Localization.tr.option18_3, nextQuestion: 19),
          OptionsModel(
              id: 4, option: Localization.tr.option18_4, nextQuestion: 19),
        ],
      ),
      QuestionModel(
        id: 19,
        question: Localization.tr.question19,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option19_1, nextQuestion: 20),
          OptionsModel(
              id: 2, option: Localization.tr.option19_2, nextQuestion: 20),
          OptionsModel(
              id: 3, option: Localization.tr.option19_3, nextQuestion: 20),
        ],
      ),
      QuestionModel(
        id: 20,
        question: Localization.tr.question20,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option20_1, nextQuestion: 21),
          OptionsModel(
              id: 2, option: Localization.tr.option20_2, nextQuestion: 21),
          OptionsModel(
              id: 3, option: Localization.tr.option20_3, nextQuestion: 21),
        ],
      ),
      QuestionModel(
        id: 21,
        question: Localization.tr.question21,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option21_1, nextQuestion: 22),
          OptionsModel(
              id: 2, option: Localization.tr.option21_2, nextQuestion: 22),
        ],
      ),
      QuestionModel(
        id: 22,
        question: Localization.tr.question22,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option22_1, nextQuestion: 23),
          OptionsModel(
              id: 2, option: Localization.tr.option22_2, nextQuestion: 23),
          OptionsModel(
              id: 3, option: Localization.tr.option22_3, nextQuestion: 23),
          OptionsModel(
              id: 4, option: Localization.tr.option22_4, nextQuestion: 23),
          OptionsModel(
              id: 5, option: Localization.tr.option22_5, nextQuestion: 23),
          OptionsModel(
              id: 6, option: Localization.tr.option22_6, nextQuestion: 23),
        ],
      ),
      QuestionModel(
        id: 23,
        question: Localization.tr.question23,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option23_1, nextQuestion: 24),
          OptionsModel(
              id: 2, option: Localization.tr.option23_2, nextQuestion: 24),
          OptionsModel(
              id: 3, option: Localization.tr.option23_3, nextQuestion: 24),
          OptionsModel(
              id: 4, option: Localization.tr.option23_4, nextQuestion: 24),
          OptionsModel(
              id: 5, option: Localization.tr.option23_5, nextQuestion: 24),
        ],
      ),
      QuestionModel(
        id: 24,
        question: Localization.tr.question24,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option24_1, nextQuestion: 25),
          OptionsModel(
              id: 2, option: Localization.tr.option24_2, nextQuestion: 25),
          OptionsModel(
              id: 3, option: Localization.tr.option24_3, nextQuestion: 25),
        ],
      ),
      QuestionModel(
        id: 25,
        question: Localization.tr.question25,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option25_1, nextQuestion: 26),
          OptionsModel(
              id: 2, option: Localization.tr.option25_2, nextQuestion: 26),
          OptionsModel(
              id: 3, option: Localization.tr.option25_3, nextQuestion: 26),
        ],
      ),
      QuestionModel(
        id: 26,
        question: Localization.tr.question26,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option26_1, nextQuestion: 27),
          OptionsModel(
              id: 2, option: Localization.tr.option26_2, nextQuestion: 27),
          OptionsModel(
              id: 3, option: Localization.tr.option26_3, nextQuestion: 27),
          OptionsModel(
              id: 4, option: Localization.tr.option26_4, nextQuestion: 27),
          OptionsModel(
              id: 5, option: Localization.tr.option26_5, nextQuestion: 27),
          OptionsModel(
              id: 6, option: Localization.tr.option26_6, nextQuestion: 27),
          OptionsModel(
              id: 7, option: Localization.tr.option26_7, nextQuestion: 27),
          OptionsModel(
              id: 8, option: Localization.tr.option26_8, nextQuestion: 27),
        ],
      ),
      QuestionModel(
        id: 27,
        question: Localization.tr.question27,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option27_1, nextQuestion: 28),
          OptionsModel(
              id: 2, option: Localization.tr.option27_2, nextQuestion: 28),
        ],
      ),
      QuestionModel(
        id: 28,
        question: Localization.tr.question28,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option28_1, nextQuestion: 29),
          OptionsModel(
              id: 2, option: Localization.tr.option28_2, nextQuestion: 29),
          OptionsModel(
              id: 3, option: Localization.tr.option28_3, nextQuestion: 29),
          OptionsModel(
              id: 4, option: Localization.tr.option28_4, nextQuestion: 29),
        ],
      ),
      QuestionModel(
        id: 29,
        question: Localization.tr.question29,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option29_1, nextQuestion: 30),
          OptionsModel(
              id: 2, option: Localization.tr.option29_2, nextQuestion: 30),
          OptionsModel(
              id: 3, option: Localization.tr.option29_3, nextQuestion: 30),
          OptionsModel(
              id: 4, option: Localization.tr.option29_4, nextQuestion: 30),
        ],
      ),
      QuestionModel(
        id: 30,
        question: Localization.tr.question30,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option30_1, nextQuestion: 31),
          OptionsModel(
              id: 2, option: Localization.tr.option30_2, nextQuestion: 31),
        ],
      ),
      QuestionModel(
        id: 31,
        question: Localization.tr.question31,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option31_1, nextQuestion: 32),
          OptionsModel(
              id: 2, option: Localization.tr.option31_2, nextQuestion: 32),
          OptionsModel(
              id: 3, option: Localization.tr.option31_3, nextQuestion: 32),
          OptionsModel(
              id: 4, option: Localization.tr.option31_4, nextQuestion: 32),
          OptionsModel(
              id: 5, option: Localization.tr.option31_5, nextQuestion: 32),
        ],
      ),
      QuestionModel(
        id: 32,
        question: Localization.tr.question32,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option32_1, nextQuestion: 33),
          OptionsModel(
              id: 2, option: Localization.tr.option32_2, nextQuestion: 33),
          OptionsModel(
              id: 3, option: Localization.tr.option32_3, nextQuestion: 33),
          OptionsModel(
              id: 4, option: Localization.tr.option32_4, nextQuestion: 33),
          OptionsModel(
              id: 5, option: Localization.tr.option32_5, nextQuestion: 33),
        ],
      ),
      QuestionModel(
        id: 33,
        question: Localization.tr.question33,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option33_1, nextQuestion: 34),
          OptionsModel(
              id: 2, option: Localization.tr.option33_2, nextQuestion: 34),
          OptionsModel(
              id: 3, option: Localization.tr.option33_3, nextQuestion: 34),
          OptionsModel(
              id: 4, option: Localization.tr.option33_4, nextQuestion: 34),
          OptionsModel(
              id: 5, option: Localization.tr.option33_5, nextQuestion: 34),
        ],
      ),
      QuestionModel(
        id: 34,
        question: Localization.tr.question34,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option34_1, nextQuestion: 35),
          OptionsModel(
              id: 2, option: Localization.tr.option34_2, nextQuestion: 35),
        ],
      ),
      QuestionModel(
        id: 35,
        question: Localization.tr.question35,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option35_1, nextQuestion: 36),
          OptionsModel(
              id: 2, option: Localization.tr.option35_2, nextQuestion: 36),
          OptionsModel(
              id: 3, option: Localization.tr.option35_3, nextQuestion: 36),
        ],
      ),
      QuestionModel(
        id: 36,
        question: Localization.tr.question36,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option36_1, nextQuestion: 37),
          OptionsModel(
              id: 2, option: Localization.tr.option36_2, nextQuestion: 37),
          OptionsModel(
              id: 3, option: Localization.tr.option36_3, nextQuestion: 37),
          OptionsModel(
              id: 4, option: Localization.tr.option36_4, nextQuestion: 37),
          OptionsModel(
              id: 5, option: Localization.tr.option36_5, nextQuestion: 37),
          OptionsModel(
              id: 6, option: Localization.tr.option36_6, nextQuestion: 37),
          OptionsModel(
              id: 7, option: Localization.tr.option36_7, nextQuestion: 37),
          OptionsModel(
              id: 8, option: Localization.tr.option36_8, nextQuestion: 37),
          OptionsModel(
              id: 9, option: Localization.tr.option36_9, nextQuestion: 37),
          OptionsModel(
              id: 10, option: Localization.tr.option36_10, nextQuestion: 37),
        ],
      ),
      QuestionModel(
        id: 37,
        question: Localization.tr.question37,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option37_1, nextQuestion: 38),
          OptionsModel(
              id: 2, option: Localization.tr.option37_2, nextQuestion: 38),
          OptionsModel(
              id: 3, option: Localization.tr.option37_3, nextQuestion: 38),
        ],
      ),
      QuestionModel(
        id: 38,
        question: Localization.tr.question38,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option38_1, nextQuestion: 39),
          OptionsModel(
              id: 2, option: Localization.tr.option38_2, nextQuestion: 39),
        ],
      ),
      QuestionModel(
        id: 39,
        question: Localization.tr.question39,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option39_1, nextQuestion: 40),
          OptionsModel(
              id: 2, option: Localization.tr.option39_2, nextQuestion: 40),
          OptionsModel(
              id: 3, option: Localization.tr.option39_3, nextQuestion: 40),
          OptionsModel(
              id: 4, option: Localization.tr.option39_4, nextQuestion: 40),
          OptionsModel(
              id: 5, option: Localization.tr.option39_5, nextQuestion: 40),
          OptionsModel(
              id: 6, option: Localization.tr.option39_6, nextQuestion: 40),
          OptionsModel(
              id: 7, option: Localization.tr.option39_7, nextQuestion: 40),
        ],
      ),
      QuestionModel(
        id: 40,
        question: Localization.tr.question40,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option40_1, nextQuestion: 41),
          OptionsModel(
              id: 2, option: Localization.tr.option40_2, nextQuestion: 41),
        ],
      ),
      QuestionModel(
        id: 41,
        question: Localization.tr.question41,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option41_1, nextQuestion: 42),
          OptionsModel(
              id: 2, option: Localization.tr.option41_2, nextQuestion: 42),
        ],
      ),
      QuestionModel(
        id: 42,
        question: Localization.tr.question42,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option42_1, nextQuestion: 43),
          OptionsModel(
              id: 2, option: Localization.tr.option42_2, nextQuestion: 43),
        ],
      ),
      QuestionModel(
        id: 43,
        question: Localization.tr.question43,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option43_1, nextQuestion: 44),
          OptionsModel(
              id: 2, option: Localization.tr.option43_2, nextQuestion: 44),
        ],
      ),
      QuestionModel(
        id: 44,
        question: Localization.tr.question44,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(
              id: 1, option: Localization.tr.option44_1, nextQuestion: 45),
          OptionsModel(
              id: 2, option: Localization.tr.option44_2, nextQuestion: 45),
          OptionsModel(
              id: 3, option: Localization.tr.option44_3, nextQuestion: 45),
        ],
      ),
      QuestionModel(
        id: 45,
        question: Localization.tr.question45,
        type: QuestionTypeEnum.multipleChoice,
        options: [
          OptionsModel(id: 1, option: Localization.tr.option45_1),
          OptionsModel(id: 2, option: Localization.tr.option45_2),
        ],
      ),
    ];
  }
}
