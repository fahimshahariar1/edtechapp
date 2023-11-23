import 'package:elearningapp1/pages/register/bloc/registerbloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login/bloc/signinBLocs.dart';

class AppBlocProvider{

  static get allBlocProviders => [

    BlocProvider(
      create: (context) => SignInBloc(),
    ),
    BlocProvider(
      create: (context) => RegisterBloc(),
    ),


  ];

}
