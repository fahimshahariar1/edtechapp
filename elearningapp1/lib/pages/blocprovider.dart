import 'package:flutter_bloc/flutter_bloc.dart';

import 'login/bloc/signinBLocs.dart';

class AppBlocProvider{

  static get allBlocProviders => [

    BlocProvider(
      create: (context) => SignInBloc(),
    ),

  ];

}
