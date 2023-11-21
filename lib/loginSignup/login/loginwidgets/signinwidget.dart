

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';
import '../signin.dart';

Widget reusableIcon(String iconname, String icontype) {
  return GestureDetector(
    onTap: () {

    },
    child: Center(
      child: Container(
        margin: EdgeInsets.all(5),
        height: 30.h,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: icontype=="Email"?AppColors.buttonColor:AppColors.iconbg,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Image.asset(width: 20,height: 20,"assets/icons/$iconname.png" ),
             Text("   Login With $iconname", style: TextStyle(color: icontype=="Email"?AppColors.buttonBg:AppColors.fontcolor, fontWeight: FontWeight.bold),),
           ],
         )
        ]),
      ),
    ),
  );
}

Widget reusableTexts(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(text,style: TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.fontcolor
    ),),
  );
}

Widget buildTextfield(String hinttext, String textType,

    void Function(String value)? func

    ) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20, bottom: 2),
    margin: EdgeInsets.all(10),
    height: 40.h,
  width: 300.h,
  decoration: BoxDecoration(
    color: AppColors.iconbg,
        borderRadius: BorderRadius.circular(40),
  ),
  child: TextField(
    onChanged:  (value)=>func!(value) ,
    decoration: InputDecoration(
      hintText: hinttext, hintStyle: TextStyle(
      color: AppColors.fontcolor2
    )
    ),
  )
  );
}


Widget buildButton(String buttonName){
  return GestureDetector(
    onTap: (){
      
    },
    child: Container(

      height: 30.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: AppColors.iconbg,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(child: Text(buttonName)),

    ),
  );
}