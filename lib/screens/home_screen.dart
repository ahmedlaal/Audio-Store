import 'package:audiostore/screens/homepage.dart';
import 'package:audiostore/screens/order.dart';
import 'package:audiostore/screens/search.dart';
import 'package:audiostore/screens/user.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:unicons/unicons.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selected = 0;
  List<Widget> pages = [
    const HomePage(),
    const Search(),
    const Orders(),
    const User()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selected],
      bottomNavigationBar: SafeArea(
        child: GNav(
          padding: EdgeInsets.all(14),
          tabMargin: const EdgeInsets.symmetric(vertical: 14),
          iconSize: 24,
          gap: 8,
          activeColor: Colors.black,
          tabBackgroundColor: Color(0xffC6AB59),
          selectedIndex: _selected,
          onTabChange: (index) {
            setState(() {
              _selected = index;
            });
          },
          tabs: [
            GButton(
              icon: UniconsLine.home_alt,
              text: "Home",
            ),
            GButton(
              icon: UniconsLine.search,
              text: "Search",
            ),
            GButton(
              icon: UniconsLine.shopping_bag,
              text: "Orders",
            ),
            GButton(
              icon: UniconsLine.user,
              text: "User",
            ),
          ],
        ),
      ),
    );
  }
}
