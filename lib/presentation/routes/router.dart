import 'package:agenda/presentation/pages/home/home_page.dart';
import 'package:agenda/presentation/pages/register/register_widget.dart';
import 'package:agenda/presentation/pages/sign_in/sign_in_page.dart';
import 'package:agenda/presentation/pages/sign_up/sign_up_form.dart';
import 'package:agenda/presentation/pages/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: SignInPage),
    AutoRoute(page: RegisterWidget),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
