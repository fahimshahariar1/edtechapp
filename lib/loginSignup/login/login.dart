
import 'package:elearningapp1/loginSignup/login/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';
import 'loginwidgets/signinwidget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/login.png"))),
        child: Container(
          margin: EdgeInsets.only(top: 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              reusableIcon("google", "Google"),
              reusableIcon("facebook", "Facebook"),
              reusableIcon("apple", "Apple"),

              SizedBox(
                height: 15.h,
              ),
              reusableTexts("Or"),
              SizedBox(
                height: 15.h,
              ),
              // InkWell(
              //     onTap: () {
              //      setState(() {
              //        Navigator.push(
              //            context,
              //            MaterialPageRoute(
              //                builder: (context) => const Signin()));
              //      });
              //     },
              //     child: reusableIcon("email", "Email")),

              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Signin()));
                  });
                },
                child: Container(
                  height: 30.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          height: 20, width: 20, "assets/icons/email.png"),
                      const Text(
                        "  Login With Email",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: AppColors.fontcolor),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Create an Account",
                        style: TextStyle(color: AppColors.buttonColor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
