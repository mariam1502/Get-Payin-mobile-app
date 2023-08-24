import 'package:flutter/material.dart';

class sectionaThree extends StatelessWidget {
  const sectionaThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              15), // Adjust the value to control the roundness
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(10),
                width: 175,
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
                child: Column(
                  children: [
                    Container(
                      width: 50, // Set the width
                      height:
                          50, // Set the height (equal to width for a perfect circle)
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Set the shape to circle
                      ),
                      child: Icon(
                        Icons.receipt,
                        size: 40,
                      ),
                    ),
                    Text('No due Pay Requests'),
                    Text('view all', style: TextStyle(color: Colors.grey))
                  ],
                )),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 175,
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
              child: Column(
                children: [
                  Container(
                    width: 50, // Set the width
                    height:
                        50, // Set the height (equal to width for a perfect circle)
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Set the shape to circle
                    ),
                    child: Icon(
                      Icons.receipt,
                      size: 40,
                    ),
                  ),
                  Text('No due Pay Requests'),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),

        // The height of this container will take up the remaining space in the column
      ),
    );
  }
}
