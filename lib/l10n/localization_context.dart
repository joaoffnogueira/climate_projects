import '../core/di/service_locator.dart';
import '../core/services/navigation_service.dart';
import 'app_localizations.dart';

class Localization {
  static AppLocalizations get tr =>
      AppLocalizations.of(getIt<NavigationService>().currentContext!)!;
}
