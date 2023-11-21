import 'package:elearningapp1/pages/bookmarks/bookmarks.dart';
import 'package:elearningapp1/pages/courses/courses.dart';
import 'package:elearningapp1/pages/navbar.dart';
import 'package:elearningapp1/pages/profile/profile.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
    );
  }
}
