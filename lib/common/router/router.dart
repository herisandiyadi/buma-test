import 'package:buma_test/ui/dashboard_home.dart';
import 'package:buma_test/ui/leave/leave_ho_page.dart';
import 'package:buma_test/ui/leave/leave_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter routeNavigation() {
    GoRouter router = GoRouter(
        navigatorKey: GlobalKey<NavigatorState>(),
        routerNeglect: false,
        initialLocation: '/dashboard-home',
        observers: [routeObserver],
        errorPageBuilder: (context, state) {
          return const MaterialPage(
            child: Scaffold(
              body: Center(
                child: Text('Page Error'),
              ),
            ),
          );
        },
        debugLogDiagnostics: true,
        redirect: (context, state) {
          print(state.fullPath);
        },
        routes: [
          GoRoute(
              path: DashboardHomePage.path,
              name: DashboardHomePage.routeName,
              builder: (context, state) {
                return const DashboardHomePage();
              },
              routes: [
                GoRoute(
                    path: LeavePage.path,
                    name: LeavePage.routeName,
                    builder: (context, state) {
                      return const LeavePage();
                    },
                    routes: [
                      GoRoute(
                          path: LeaveHOPage.path,
                          name: LeaveHOPage.routeName,
                          builder: (context, state) {
                            return const LeaveHOPage();
                          },
                          routes: []),
                    ]),
              ]),
        ]);

    return router;
  }
}

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();
