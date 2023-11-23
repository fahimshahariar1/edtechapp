import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildPage(int index){

  List<Widget> widget = [
Center(child: Text("Home")),
Center(child: Text("Course")),
Center(child: Text("Bookmark")),
Center(child: Text("Profile")),
  ];

  return widget[index];

}

var bottomTabs = [

  BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
  BottomNavigationBarItem(
      icon: Icon(Icons.menu_book_rounded), label: "Course"),
  BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_add), label: "BookMark"),
  BottomNavigationBarItem(
      icon: Icon(Icons.account_box), label: "Profile"),


];