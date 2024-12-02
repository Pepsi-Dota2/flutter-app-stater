import 'package:auto_route/auto_route.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/pages/login_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
      ];
}
