import 'package:flutter/material.dart';
import '../widgets/customer-destails-widgets/details-section.dart';
import '../widgets/customer-destails-widgets/row-data.dart';

class CustomerDetailsScreen extends StatefulWidget {
  const CustomerDetailsScreen({Key? key}) : super(key: key);

  @override
  _CustomerDetailsScreenState createState() => _CustomerDetailsScreenState();
}

class _CustomerDetailsScreenState extends State<CustomerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Customer Details')),
        body: Stack(
          children: [
            // Your main content here
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  DetailsSection(),
                  SizedBox(height: 20), // Add spacing between sections
                  for (int index = 0; index < 2; index++)
                    AddRow(), // Replace with your actual AddRow widget
                ],
              ),
            ),

            // Sticky Button 2
            Positioned(
              bottom: 20, // Adjust the position as needed
              right: 20, // Adjust the position as needed

              child: FloatingActionButton(
                onPressed: () {
                  // Handle button 2 press
                },
                child: Icon(
                  Icons.edit,
                ),
              ),
            ),
          ],
        ));
  }
}
