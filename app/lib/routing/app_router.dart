import 'package:auto_route/auto_route.dart';
import 'package:robot_controller_app/pages/connect/connect_page.dart';
import 'package:robot_controller_app/pages/control/control_screen.dart';
import 'package:robot_controller_app/pages/dashboard/dashboard_screen.dart';
import 'package:robot_controller_app/pages/home/home_page.dart';
import 'package:robot_controller_app/pages/settings/settings_page.dart';
import 'package:robot_controller_app/pages/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: ConnectRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(page: DashboardRoute.page, initial: true),
            AutoRoute(page: ControlRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
      ];
}
