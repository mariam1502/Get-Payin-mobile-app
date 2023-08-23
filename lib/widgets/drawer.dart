import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                // color: Colors.blue, // You can set a background color if needed
                ),
            child: Image.asset(
              'images/logo.png',
              fit: BoxFit
                  .contain, // This will make the image fit within the available space
            ),
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.dashboard),
                SizedBox(
                  width: 10,
                ),
                Text('Dashboard')
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 10,
                ),
                Text('Customers')
              ],
            ),
            onTap: () {
              context.go('/customers');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.list),
                SizedBox(
                  width: 10,
                ),
                Text('Items')
              ],
            ),
            onTap: () {
              context.go('/items');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(
                  width: 10,
                ),
                Text('Pay Requests')
              ],
            ),
            onTap: () {
              context.go('/pay-request');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 10,
                ),
                Text('Pay Request Template')
              ],
            ),
            onTap: () {
              context.go('/pay-request-template');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.payment),
                SizedBox(
                  width: 10,
                ),
                Text('Payments')
              ],
            ),
            onTap: () {
              context.go('/payments');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 10,
                ),
                Text('Expenses')
              ],
            ),
            onTap: () {
              context.go('/expenses');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.car_repair),
                SizedBox(
                  width: 10,
                ),
                Text('Vendors')
              ],
            ),
            onTap: () {
              context.go('/vendors');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.report),
                SizedBox(
                  width: 10,
                ),
                Text('Reports')
              ],
            ),
            onTap: () {
              context.go('/report');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  width: 10,
                ),
                Text('Settings')
              ],
            ),
            onTap: () {
              context.go('/settings');
            },
          ),
        ],
      ),
    );
  }
}
