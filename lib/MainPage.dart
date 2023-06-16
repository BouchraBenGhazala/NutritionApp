import 'package:flutter/material.dart';

import 'Pages/Page1.dart';
import 'Pages/Page2.dart';
import 'Pages/Page3.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Page1(
      fruitQuantity: 10,
    ),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        selectedLabelStyle: const TextStyle(
          color: Colors.green, // Set the color of the selected label here
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey, // Set the color of the selected label here
        ),
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () => _navigationBottomBar(0),
              child: Icon(
                Icons.splitscreen,
                color: _selectedIndex == 0 ? Colors.green : Colors.grey,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () => _navigationBottomBar(1),
              child: Icon(
                Icons.bar_chart,
                color: _selectedIndex == 1 ? Colors.green : Colors.grey,
              ),
            ),
            label: 'Calories calculator',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () => _navigationBottomBar(2),
              child: Icon(
                Icons.apple,
                color: _selectedIndex == 2 ? Colors.green : Colors.grey,
              ),
            ),
            label: 'MC claculator',
          ),
        ],
      ),
    );
  }
}
