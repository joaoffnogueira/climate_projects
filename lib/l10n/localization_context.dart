import '../main.dart';
import 'app_localizations.dart';

class Localization {
  static AppLocalizations get tr => AppLocalizations.of(NavigationKeys.navigatorKey.currentContext!)!;
}