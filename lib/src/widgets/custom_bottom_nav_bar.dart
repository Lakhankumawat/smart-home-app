import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';

Widget CustomBottomNavBar(HomeScreenViewModel model) {
  return BottomNavigationBar(
    currentIndex: model.selectedIndex,
    selectedItemColor: Colors.black,
    elevation: 0,
    onTap: model.onItemTapped,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.home),
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.auto_graph_rounded),
        backgroundColor: Colors.lightBlue,
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.history),
        backgroundColor: Colors.lightBlue,
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.person_rounded),
        backgroundColor: Colors.lightBlue,
      ),
    ],
  );
}
