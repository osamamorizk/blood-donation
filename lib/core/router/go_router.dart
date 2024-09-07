import 'package:blood_donation/consts.dart';
import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/feature/home/presentation/views/home_view.dart';
import 'package:blood_donation/feature/login/presentation/views/login_view.dart';
import 'package:blood_donation/feature/login/presentation/views/otp_view.dart';
import 'package:blood_donation/feature/login/presentation/views/verfication_view.dart';
import 'package:blood_donation/feature/register/presentation/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: onboarding ? Routes.kLoginView : Routes.kOnboarding,
    routes: <RouteBase>[
      GoRoute(
        path: Routes.kOnboarding,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: Routes.kLoginView,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: Routes.kOtpView,
        builder: (BuildContext context, GoRouterState state) {
          return const OtpView();
        },
      ),
      GoRoute(
        path: Routes.kVerification,
        builder: (BuildContext context, GoRouterState state) {
          return const VerficationView();
        },
      ),
      GoRoute(
        path: Routes.kRegisterView,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterView();
        },
      ),
      GoRoute(
        path: Routes.kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
    ],
  );
}
