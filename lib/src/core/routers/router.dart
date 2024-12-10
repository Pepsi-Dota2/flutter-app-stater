import 'package:auto_route/auto_route.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/pages/login_page.dart';
import 'package:flutter_app_stater/src/modules/Login/presentation/pages/register/register.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/pages/doctor_detail/doctor_detail_page.dart';
// import 'package:flutter_app_stater/src/modules/home/presentation/pages/doctor_detail/doctor_detail_page.dart';
import 'package:flutter_app_stater/src/modules/message/presentation/page/message.dart';
import 'package:flutter_app_stater/src/modules/profile/presentation/page/profile.dart';

import '../../modules/home/presentation/pages/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: MessageRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: DoctorDetailRoute.page),
      ];
}
