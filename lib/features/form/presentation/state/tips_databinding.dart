import 'package:climate_change_projects/features/form/data/models/tip_model.dart';

import '../../../../l10n/localization_context.dart';

class TipsDatabinding {
  Map<int, TipModel> tips = {};

  TipsDatabinding() {
    tips = {
      TipEnum.diagnosis.id: TipModel(
        text: Localization.tr.tip2,
      ),
      TipEnum.participation.id: TipModel(
        text: Localization.tr.tip8,
      ),
      TipEnum.dimensions.id: TipModel(
        text: Localization.tr.tip12,
      ),
      TipEnum.emotions.id: TipModel(
        text: Localization.tr.tip23,
      ),
      TipEnum.emotionalConection.id: TipModel(
        text: Localization.tr.tip24,
      ),
      TipEnum.feedback.id: TipModel(
        text: Localization.tr.tip31,
      ),
    };
  }
}
