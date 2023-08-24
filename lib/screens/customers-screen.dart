import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Customers'),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
