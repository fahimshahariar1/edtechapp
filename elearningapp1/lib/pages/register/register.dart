import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';
import '../login/bloc/signinBLocs.dart';
import '../login/bloc/signinEvents.dart';
import '../login/loginwidgets/signinwidget.dart';
import '../login/signinController.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(

        children: [


          Image.asset(
              "assets/images/login2.png"),

          buildTextfield("Name", "name",

                  (value) {
                context.read<SignInBloc>().add(EmailEvent(value));
              }

          ),
          buildTextfield("Email", "email",
                  (value) {
                context.read<SignInBloc>().add(PassEvent(value));
              }

          ),

          buildTextfield("Password", "pass", (value) { }),
          buildTextfield("Confirm Password", "confirmpass", (value) { }),

SizedBox(height: 30.h,),
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
                    "Register",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
