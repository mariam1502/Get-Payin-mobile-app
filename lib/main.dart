import 'package:flutter/material.dart';
import 'package:get_payin/router/routes.dart';
import './widgets/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primaryColor: Color(0xFF009C95),
          // This will be the default app bar color
        ),
        routerConfig: MyRoutes().myrouter);
  }
}
