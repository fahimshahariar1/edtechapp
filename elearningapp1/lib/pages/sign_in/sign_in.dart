import 'package:elearningapp1/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:elearningapp1/pages/sign_in/bloc/sign_in_states.dart';
import 'package:elearningapp1/pages/sign_in/sign_in_controller.dart';
//import 'package:elearningapp1/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../commonwidgets.dart';
import 'bloc/sign_in_events.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInStates>(
      builder: (context, states) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              appBar: buildAppbar("Log In"),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    loginutilitis(BuildContext, context),
                    Center(child: reusabletexts("Or Use Your Email to Login")),
                    Container(
                      margin: EdgeInsets.only(top: 36.h),
                      padding: EdgeInsets.only(left: 25.w, right: 25.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusabletexts("Email"),
                          SizedBox(
                            height: 5.h,
                          ),
                          buildtextfield("Enter Your Email", "email", "user",
                              (value) {
                            context.read<SignInBloc>().add(EmailEvent(value));
                          }),
                          reusabletexts("Password"),
                          SizedBox(
                            height: 5.h,
                          ),
                          buildtextfield(
                            "Enter Your Password",
                            "pass",
                            "lock",
                            (value) {
                              context.read<SignInBloc>().add(PassEvent(value));
                            },
                          ),
                        ],
                      ),
                    ),
                    forgotPass(),
                    buildloginandRegButton("Log In", "login", () {
                      SignInController(context: context).handleSignIn("email");
                    }),
                    buildloginandRegButton("Sign Up", "reg", () {
                      Navigator.pushNamed(context, "register");
                    }),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
