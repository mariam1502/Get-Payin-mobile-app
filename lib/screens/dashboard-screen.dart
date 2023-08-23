import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/card-widget.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dash board')),
      drawer: DrawerWidget(),
      body: CardWidget(),
    );
  }
}
