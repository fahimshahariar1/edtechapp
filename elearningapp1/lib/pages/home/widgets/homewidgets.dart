import 'package:flutter/material.dart';
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


Widget searchView(){
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
                    hintText: "Search Courses", hintStyle: TextStyle(
                    color: AppColors.fontcolor2
                )
                ),
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
