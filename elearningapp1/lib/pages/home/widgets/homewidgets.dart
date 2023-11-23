import 'package:dots_indicator/dots_indicator.dart';
import 'package:elearningapp1/pages/home/bloc/homeblocs.dart';
import 'package:elearningapp1/pages/home/bloc/homeevents.dart';
import 'package:elearningapp1/pages/home/bloc/homestate.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

AppBar buildAppbar() {
  return AppBar(
    title: Container(
      margin: EdgeInsets.only(left: 7.w, right: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 15.w,
            height: 12.h,
            child: Image.asset("assets/icons/menu.png"),
          ),
          GestureDetector(
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/f.png"))),
            ),
          )
        ],
      ),
    ),
  );
}

Widget homePageText(String text) {
  return Container(
    margin: EdgeInsets.only(top: 20.h),
    child: Text(
      text,
      style: TextStyle(fontSize: 20.sp),
    ),
  );
}

Widget searchView() {
  return Row(
    children: [
      Container(
        width: 280.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 17.w),
              width: 16.w,
              height: 16.w,
              child: Icon(Icons.search),
            ),
            Container(
              width: 240.w,
              height: 40.h,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search Courses",
                    hintStyle: TextStyle(color: AppColors.fontcolor2)),
              ),
            )
          ],
        ),
      ),
      GestureDetector(
        child: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.w),
            border: Border.all(
              color: AppColors.fontcolor2,
            ),
          ),
          child: Image.asset("assets/icons/op.png"),
        ),
      )
    ],
  );
}

Widget sliderview(BuildContext context, HomePageState state) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 20.h),
        height: 162.h,
        width: 325.w,
        child: PageView(
          onPageChanged: (value) {
            context.read<HomePageBlocs>().add(HomePageDots(value));
          },
          children: [
            sliderContainer(),
            sliderContainer(),
            sliderContainer(),
          ],
        ),
      ),
      Container(
        child: DotsIndicator(
          dotsCount: 3,
          position: state.index,
        ),
      )
    ],
  );
}

Widget sliderContainer({String path = "assets/icons/art.png"}) {
  return Container(
    width: 325.w,
    height: 162.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(path))),
  );
}

Widget menuView() {
  return Column(
    children: [
      Container(
        width: 325.w,
        margin: EdgeInsets.only(top: 15.h),
        child: Row(
          children: [
            reusableSubText("Let's Explore The Latest Courses!"),
            GestureDetector(child: reusableSubText("See All")),
          ],
        ),
      ),
      Container(
        child: Row(
          children: [

          ],
        ),
      ),
      reusableMenuText("ALL"),
      reusableMenuText("Popular"),
      reusableMenuText("Newest"),

    ],
  );
}

Widget reusableSubText(String text) {
  return Container(
    child: Text(text),
  );
}

Widget reusablesubTitleText(String menuText) {
  return Container(
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.w),
          ),
          child: Text(menuText),
        )
      ],
    ),
  );
}

Widget reusableMenuText(String text) {
  return  Container(
    decoration: BoxDecoration(color: Colors.red),
    child: Text(text),

  );
}
