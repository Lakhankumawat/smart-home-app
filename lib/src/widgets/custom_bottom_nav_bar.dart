import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';

Widget CustomBottomNavBar(HomeScreenViewModel model) {
  return BottomNavigationBar(
    currentIndex: model.selectedIndex,
    selectedItemColor: Colors.black,
    onTap: model.onItemTapped,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        title: Text('Home'),
        icon: Icon(Icons.home),
        backgroundColor: Colors.lightBlue,
      ),
      // BottomNavigationBarItem(
      //   title: Text('Statistics'),
      //   icon: Icon(Icons.auto_graph_rounded),
      //   backgroundColor: Colors.lightBlue,
      // ),
      BottomNavigationBarItem(
        title: Text('History'),
        icon: Icon(Icons.history),
        backgroundColor: Colors.lightBlue,
      ),
      BottomNavigationBarItem(
        title: Text('Settings'),
        icon: Icon(Icons.person_rounded),
        backgroundColor: Colors.lightBlue,
      ),
    ],
  );
}
