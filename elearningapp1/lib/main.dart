
import 'package:elearningapp1/pages/blocprovider.dart';

import 'package:elearningapp1/pages/login/login.dart';
import 'package:elearningapp1/pages/login/signin.dart';
import 'package:elearningapp1/pages/register/register.dart';
import 'package:elearningapp1/startuppage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProvider.allBlocProviders,
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Interactive Cares',
          home: StartUp(),
          routes: {
                    "login": (context) => const Login(),
            "signIn": (context) => const Signin(),
            "register": (context) =>const Register(),
        },
        ),
      ),
    );
  }
}
