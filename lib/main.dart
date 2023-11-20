import 'package:edtechapp/loginSignup/login/bloc/signinBLocs.dart';
import 'package:edtechapp/loginSignup/login/login.dart';
import 'package:edtechapp/startuppage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => SignInBloc())],
      child: ScreenUtilInit(
        builder: (context, child) =>  MaterialApp(

            debugShowCheckedModeBanner: false,
            title: 'Interactive Cares',
            home: StartUp(),
          routes: {
              "login":(context)=> Login(),
          },
        ),
      ),
    );
  }
}
