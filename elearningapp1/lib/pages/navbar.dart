import 'package:elearningapp1/pages/profile/profile.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bookmarks/bookmarks.dart';
import 'courses/courses.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int index = 0;

  List Pages = [Courses(), Bookmark(), Profile()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Pages[index],

      bottomNavigationBar: FlashyTabBar(

        selectedIndex: index,
        onItemSelected: (value) {
          setState(() {
            index = value;
          });
        },

        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.menu_book_rounded),
            title: Text("Courses"),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.bookmark_add),
            title: Text("Bookmarks"),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.account_box),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
