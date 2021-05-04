import 'package:agenda/presentation/pages/home/home_page.dart';
import 'package:agenda/presentation/pages/sign_in/sign_in_page.dart';
import 'package:agenda/presentation/pages/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
