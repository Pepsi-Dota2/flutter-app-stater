import 'package:auto_route/auto_route.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/pages/login_page.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/pages/register/register.dart';

import '../../modules/home/presentation/pages/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: HomeRoute.page),
      ];
}
