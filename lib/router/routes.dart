import 'package:flutter/material.dart';
import 'package:get_payin/screens/dashboard-screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/customers-screen.dart';
import '../screens/dashboard-screen.dart';
import '../screens/expenses-screen.dart';
import '../screens/items-screen.dart';
import '../screens/pay-request-screen.dart';
import '../screens/pay-request-template-screen.dart';
import '../screens/payments-screen.dart';
import '../screens/report-screen.dart';
import '../screens/setting-screen.dart';
import '../screens/vendors-screen.dart';
import '../widgets/bottom_nav.dart';

class MyRoutes {
  final GoRouter myrouter = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const BottomNav();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'customers',
            builder: (BuildContext context, GoRouterState state) {
              return const CustomerScreen();
            },
          ),
          GoRoute(
            path: 'expenses',
            builder: (BuildContext context, GoRouterState state) {
              return const ExpensesScreem();
            },
          ),
          GoRoute(
            path: 'items',
            builder: (BuildContext context, GoRouterState state) {
              return const ItemsScreen();
            },
          ),
          GoRoute(
            path: 'pay-request',
            builder: (BuildContext context, GoRouterState state) {
              return const PayRequestScreen();
            },
          ),
          GoRoute(
            path: 'pay-request-template',
            builder: (BuildContext context, GoRouterState state) {
              return const PayRequestTemplateScreen();
            },
          ),
          GoRoute(
            path: 'payments',
            builder: (BuildContext context, GoRouterState state) {
              return const PaymentScreen();
            },
          ),
          GoRoute(
            path: 'report',
            builder: (BuildContext context, GoRouterState state) {
              return const ReportScreen();
            },
          ),
          GoRoute(
            path: 'settings',
            builder: (BuildContext context, GoRouterState state) {
              return const SettingsScreen();
            },
          ),
          GoRoute(
            path: 'vendors',
            builder: (BuildContext context, GoRouterState state) {
              return const VendorsScreen();
            },
          ),
        ],
      ),
    ],
  );
}
