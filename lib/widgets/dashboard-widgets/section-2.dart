import 'package:flutter/material.dart';
import '../dashboard-widgets/chart.dart';
import '../dashboard-widgets/chart2.dart';

class sectionTwo extends StatelessWidget {
  const sectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 380,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 3, // Spread radius
            blurRadius: 10, // Blur radius
            offset: Offset(0, 3), // Offset in the (x, y) direction
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(
            15), // Adjust the value to control the roundness
      ),
      child: Padding(
        child: lLineChart(),
        padding: EdgeInsets.all(10),
      ),
      //  LineChartSample2(),
    );
  }
}
