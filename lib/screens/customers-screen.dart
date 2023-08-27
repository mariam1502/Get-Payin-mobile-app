import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/cutomer-widgets/cutomer-data.dart';
import 'package:go_router/go_router.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Color(0xFF009C95),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Customers',
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            )),
        body: Stack(
          children: [
            // Your main content here
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  for (int index = 0; index < 2; index++)
                    CustomerData(), // Replace with your actual AddRow widget
                ],
              ),
            ),

            // Sticky Button 2
            Positioned(
              bottom: 20, // Adjust the position as needed
              right: 20, // Adjust the position as needed

              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  // Handle button 2 press
                },
                child: Icon(
                  Icons.add,
                  color: Color(0xFF009C95),
                ),
              ),
            ),
          ],
        ));
  }
}
