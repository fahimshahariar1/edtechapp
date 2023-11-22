import 'package:elearningapp1/pages/application/applicationWidget.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: buildPage(index),
            bottomNavigationBar: FlashyTabBar(
              selectedIndex: index,
              onItemSelected: (value) {
                setState(() {
                  index = value;
                });
              },
              items: [
                FlashyTabBarItem(
                  icon: const Icon(Icons.home),
                  title: const Text("Home"),
                ),
                FlashyTabBarItem(
                  icon: const Icon(Icons.chrome_reader_mode_outlined),
                  title: const Text("Course"),
                ),
                FlashyTabBarItem(
                  icon: const Icon(Icons.bookmark_add),
                  title: const Text("Bookmark"),
                ),
                FlashyTabBarItem(
                  icon: const Icon(Icons.account_box_rounded),
                  title: const Text("Profile"),
                ),
              ],
            )),
      ),
    );
  }
}
