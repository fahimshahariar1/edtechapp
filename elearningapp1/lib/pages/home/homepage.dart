import 'package:elearningapp1/pages/home/bloc/homeblocs.dart';
import 'package:elearningapp1/pages/home/bloc/homestate.dart';
import 'package:elearningapp1/pages/home/widgets/homewidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(),
        body: BlocBuilder<HomePageBlocs, HomePageState>(
            builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                homePageText("hello"),
                homePageText("Fahim"),
                SizedBox(
                  height: 10.h,
                ),
                searchView(),
                sliderview(context, state),
                menuView(),
              ],
            ),
          );
        }));
  }
}
