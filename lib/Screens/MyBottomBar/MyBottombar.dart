
import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/Category/Catagory.dart';
import 'package:untitled/Screens/HomePage/Homepage.dart';
import 'package:untitled/appColors/app_colors.dart';

import '../../appColors/app_colors.dart';

class MyBottomBar extends StatefulWidget {
  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CatagoryScreen(),
    Text(
      '3Page',
      style: optionStyle,
    ),
    Text(
      '4Page',
      style: optionStyle,
    ),
    Text(
      '5Page',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      children: _widgetOptions,
      onItemTap: _onItemTapped,
      scaffold: Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: AppColors.baseGrey40Color,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedIconTheme: IconThemeData(color: AppColors.baseDarkPinkColor),
            // selectedItemColor: AppColors.baseDarkPinkColor,
            onTap: _onItemTapped,
          ),
        ),
    );
  }
}
