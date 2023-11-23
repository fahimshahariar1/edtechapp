import 'package:elearningapp1/common/routes/routes.dart';
import 'package:elearningapp1/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

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
      providers: AppPages().allBlocProviders(context),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Interactive Cares',
initialRoute: '/start',
          onGenerateRoute: AppPages().GenerateRouteSettings,
        ),
      ),
    );
  }
}
