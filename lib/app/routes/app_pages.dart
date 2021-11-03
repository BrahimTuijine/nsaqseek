import 'package:get/get.dart';

import 'package:nsaqseek/app/modules/auth/login/bindings/login_binding.dart';
import 'package:nsaqseek/app/modules/auth/login/views/login_view.dart';
import 'package:nsaqseek/app/modules/auth/register/bindings/register_binding.dart';
import 'package:nsaqseek/app/modules/auth/register/views/register_view.dart';
import 'package:nsaqseek/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:nsaqseek/app/modules/dashboard/views/dashboard_view.dart';
import 'package:nsaqseek/app/modules/home/bindings/home_binding.dart';
import 'package:nsaqseek/app/modules/home/views/home_view.dart';
import 'package:nsaqseek/app/modules/search/bindings/search_binding.dart';
import 'package:nsaqseek/app/modules/search/views/search_view.dart';
import 'package:nsaqseek/app/modules/seggussions/bindings/seggussions_binding.dart';
import 'package:nsaqseek/app/modules/seggussions/views/seggussions_view.dart';
import 'package:nsaqseek/app/modules/services/bindings/services_binding.dart';
import 'package:nsaqseek/app/modules/services/views/services_view.dart';
import 'package:nsaqseek/app/modules/splash/bindings/splash_binding.dart';
import 'package:nsaqseek/app/modules/splash/views/splash_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.SEGGUSSIONS,
      page: () => SeggussionsView(),
      binding: SeggussionsBinding(),
    ),
    GetPage(
      name: _Paths.SERVICES,
      page: () => ServicesView(),
      binding: ServicesBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
