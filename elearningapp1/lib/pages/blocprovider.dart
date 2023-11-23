
import 'package:elearningapp1/pages/application/bloc/appBloc.dart';
import 'package:elearningapp1/pages/home/bloc/homeblocs.dart';
import 'package:elearningapp1/pages/register/bloc/register_blocs.dart';
import 'package:elearningapp1/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class AppBlocProvider{

  static get allBlocProviders => [

    BlocProvider(
      create: (context) => SignInBloc(),
    ),
    BlocProvider(
      create: (context) => RegisterBlocs(),
    ),
    BlocProvider(
      create: (context) => HomePageBlocs(),
    ),
    BlocProvider(
      create: (context) => AppBlocs(),
    ),



  ];

}
