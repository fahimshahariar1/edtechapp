import 'package:elearningapp1/common/routes/routes.dart';
import 'package:elearningapp1/pages/application/application.dart';
import 'package:elearningapp1/pages/application/bloc/appBloc.dart';

import 'package:elearningapp1/pages/login/bloc/signinBLocs.dart';
import 'package:elearningapp1/pages/login/signin.dart';
import 'package:elearningapp1/pages/register/bloc/registerbloc.dart';
import 'package:elearningapp1/pages/register/register.dart';
import 'package:elearningapp1/startuppage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../global.dart';


class AppPages {
  List<PageEntity> routes() {
    return [
      PageEntity(
          route: AppRoutes.INITIAL,
          page: StartUp(),
          bloc: BlocProvider(create: (_) => SignInBloc())),
      PageEntity(
          route: AppRoutes.REGISTER,
          page: Register(),
          bloc: BlocProvider(create: (_) => RegisterBloc())),
      PageEntity(
          route: AppRoutes.APPLICATION,
          page: Application(),
          bloc: BlocProvider(create: (_) => AppBlocs())),

    ];
  }


  List<BlocProvider<dynamic>> allBlocProviders(BuildContext context) {
    List<BlocProvider<dynamic>> blocProviders = <BlocProvider<dynamic>>[];
    for (var blocEntity in routes()) {
      blocProviders.add(BlocProvider(create: (_) => blocEntity.bloc));
    }
    return blocProviders;
  }



  MaterialPageRoute GenerateRouteSettings(RouteSettings settings) {
      if (settings.name != null) {
        var result = routes().where((element) =>
        element.route == settings.name);
        if (result.isNotEmpty){
          bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();

          if(result.first.route==AppRoutes.INITIAL&& deviceFirstOpen){
            return MaterialPageRoute(builder: (_)=> Signin(),settings: settings);
          }

          return MaterialPageRoute(builder: (_)=> result.first.page, settings: settings);
        }
      }
      return MaterialPageRoute(builder: (_)=> Signin());
    }
  }


class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({
    required this.route,
    required this.page,
     this.bloc,
  });
}
