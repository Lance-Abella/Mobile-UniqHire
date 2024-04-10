// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uniqhire/screens/agency_screen.dart';

import 'company_screen.dart';
import 'forum_screen.dart';
import 'home_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  final tabs = [
    HomeScreen(),
    AgencyScreen(),
    CompanyScreen(),
    ForumScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        selectedItemColor: Color(0xff76453B),
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Image(
                    image: AssetImage('assets/home.png'),
                    height: 30,
                    width: 30,                    
                  ),
            label: "Home",
            
          ),

          BottomNavigationBarItem(
            icon: Image(
                    image: AssetImage('assets/agency.png'),
                    height: 30,
                    width: 30,                    
                  ),
            label: " Agencies",
          ),

          BottomNavigationBarItem(
            icon: Image(
                    image: AssetImage('assets/companies.png'),
                    height: 30,
                    width: 30,                    
                  ),
            label: " Companies",
          ),

          BottomNavigationBarItem(
            icon: Image(
                    image: AssetImage('assets/forum.png'),
                    height: 30,
                    width: 30,                    
                  ),
            label: " Forum",
          ),
        ],

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

        },
      ),
    );
  }
}