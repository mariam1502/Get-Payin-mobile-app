import 'package:flutter/material.dart';

class sectionOne extends StatelessWidget {
  dynamic quarterHeight;
  sectionOne({super.key, required this.quarterHeight});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            width: MediaQuery.of(context).size.width,
            height: quarterHeight,
            color: Color(0xFF009C95),
            child: Text(
              'Dash Board',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              height: 170,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: Offset(0, 3), // Offset in the (x, y) direction
                  ),
                ], // Adjust the value to control the roundness
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cutomers',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('54', style: TextStyle(fontSize: 25))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pay Requests',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('77', style: TextStyle(fontSize: 25))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Due Ammount',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '\$110,022.48',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
