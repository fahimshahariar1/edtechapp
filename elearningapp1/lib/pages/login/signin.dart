
import 'package:elearningapp1/pages/login/signinController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';

import 'bloc/signinBLocs.dart';
import 'bloc/signinEvents.dart';
import 'bloc/signinStates.dart';
import 'loginwidgets/signinwidget.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(

          children: [


            Image.asset(
                "assets/images/login2.png"),

            buildTextfield("Email", "email",

                    (value) {
                  context.read<SignInBloc>().add(EmailEvent(value));
                }

            ),
            buildTextfield("Password", "pass",
                    (value) {
                  context.read<SignInBloc>().add(PassEvent(value));
                }

            ),
            TextButton(
              onPressed: () {


              },
              child: Text(
                "Forgot Password",
                style: TextStyle(
                  color: AppColors.buttonColor,
                ),
              ),),
            GestureDetector(
              onTap: () {

                 SignInController(context).handleSignIn("email");

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

                    const Text(
                      "Log In",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
