import 'package:flutter/material.dart';
import 'package:modulepro/2button.dart';
import 'package:modulepro/5images.dart';
import 'package:modulepro/6inputs.dart';
import 'package:modulepro/15.1tab_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  List<Widget> screens = [

    buttons(),
    Input(),
    image(),
    tab_bar(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,

          onDestinationSelected: (int index){
            selectedIndex = index;
            setState(() {

            });
          },


          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.message), label: 'Inbox'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
