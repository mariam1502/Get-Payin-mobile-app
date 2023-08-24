import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/card-widget.dart';
import '../widgets/dashboard-widgets/section-1.dart';
import '../widgets/dashboard-widgets/section-3.dart';
import '../widgets/dashboard-widgets/section-2.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double quarterHeight = MediaQuery.of(context).size.height * 0.15;
    double quarterWidth = MediaQuery.of(context).size.width * 0.25;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Dash Board',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color(0xFF009C95),
        ),
        drawer: DrawerWidget(),
        body: Column(
          children: [
            Container(
                width: MediaQuery.of(context)
                    .size
                    .width, // Set width to screen width
                height: MediaQuery.of(context).size.height *
                    0.25, // Set height to screen height
                child: sectionOne(quarterHeight: quarterHeight)),
            SizedBox(
              height: 10,
            ),
            sectionTwo(),
            sectionaThree(),
          ],
        ));
  }
}
