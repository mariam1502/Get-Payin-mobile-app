import 'package:flutter/material.dart';
import 'package:get_payin/screens/dashboard-screen.dart';
import '../screens/customers-screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    CustomerScreen(),
    DashBoardScreen(),
    Text('Second Page'),
    Text('Third Page')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: Color(0xFF009C95), size: 30),
        selectedItemColor: Color(0xFF009C95),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Company',
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
