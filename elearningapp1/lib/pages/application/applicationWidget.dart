import 'package:flutter/cupertino.dart';

Widget buildPage(int index){

  List<Widget> widget = [
Center(child: Text("Home")),
Center(child: Text("Course")),
Center(child: Text("Bookmark")),
Center(child: Text("Profile")),
  ];

  return widget[index];

}