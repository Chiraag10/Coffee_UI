// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:coffee_app/constants.dart';

import 'package:coffee_app/homepage.dart';
import 'package:coffee_app/orders.dart';
import 'package:coffee_app/splash.dart';

import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(CoffeeUi());
}

class CoffeeUi extends StatelessWidget {
  const CoffeeUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// ---------------Bottom Navigation Bar---------------

class Navigatr extends StatefulWidget {
  const Navigatr({Key? key}) : super(key: key);

  @override
  _NavigatrState createState() => _NavigatrState();
}

class _NavigatrState extends State<Navigatr> {
  final List<Widget> _navigat = [
    Homepage(),
    Orders(),
    PageName(pageName: 'Favourites'),
    PageName(pageName: 'History')
  ];

  int _selectedIndex = 0;

  void _onTapnav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: _navigat.elementAt(_selectedIndex),
        ),
      )),

      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10.0,
        backgroundColor: kCardBackground,
        selectedItemColor: kActiveColor,
        unselectedItemColor: kPrimaryColor,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onTapnav,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                size: 25.0,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.shoppingCart,
                size: 25.0,
              ),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.heart,
                size: 25.0,
              ),
              label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.history,
                size: 25.0,
              ),
              label: 'History'),
        ],
      ),
    );
  }
}

class PageName extends StatelessWidget {
  PageName({required this.pageName});
  String pageName;
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Center(
            child: Text(
          pageName,
          style: const TextStyle(color: Colors.white, fontSize: 40.0),
        )),
      ],
    );
  }
}
