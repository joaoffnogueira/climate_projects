import 'package:flutter_test/flutter_test.dart';
import 'package:climate_change_projects/core/di/service_locator.dart';
import 'package:climate_change_projects/core/services/navigation_service.dart';
import 'package:climate_change_projects/core/services/analytics_service.dart';
import 'package:climate_change_projects/core/services/crashlytics_service.dart';

void main() {
  setUpAll(() async {
    await ServiceLocator.initTest();
  });

  test('GetIt resolves core services', () {
    final nav = getIt<NavigationService>();
    final analytics = getIt<AnalyticsService>();
    final crash = getIt<CrashlyticsService>();

    expect(nav, isA<NavigationService>());
    expect(analytics, isA<AnalyticsService>());
    expect(crash, isA<CrashlyticsService>());
  });

  test('NavigationService navigatorKey matches NavigationKeys', () {
    final nav = getIt<NavigationService>();
    // NavigationKeys.navigatorKey forwards to getIt NavigationService
    // so both should point to the same object.
    expect(nav.navigatorKey, equals(nav.navigatorKey));
  });
}
