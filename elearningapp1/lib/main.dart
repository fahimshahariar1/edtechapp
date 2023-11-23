import 'package:elearningapp1/common/routes/routes.dart';
import 'package:elearningapp1/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:elearningapp1/common/routes/pages.dart'; // Removed trailing slash

import 'global.dart';

Future<void> main() async {
  await Global.init();

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppPages().allBlocProviders(BuildContext, context) as List<BlocProvider<dynamic>>,


      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Interactive Cares',
          initialRoute: AppRoutes.INITIAL, // Replace with the actual route you want to navigate to
          onGenerateRoute: AppPages().generateRouteSettings, // Fix the method name here
        ),
      ),
    );
  }
}
