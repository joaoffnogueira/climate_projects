import 'package:climate_change_projects/helpers/theme_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('randomTheme sets theme within range', () {
    final helper = ThemeHelper();
    for (int i = 0; i < 100; i++) {
      helper.randomTheme();
      expect(helper.theme, isNotNull);
      expect(helper.theme, inInclusiveRange(0, 12));
      expect(() => helper.primaryColor, returnsNormally);
      expect(() => helper.backgroundColor, returnsNormally);
      expect(() => helper.image, returnsNormally);
      expect(() => helper.credit, returnsNormally);
    }
  });
}
