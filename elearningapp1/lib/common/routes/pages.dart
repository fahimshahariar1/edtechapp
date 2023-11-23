import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../global.dart';
import '../../pages/application/application.dart';
import '../../pages/application/bloc/appBloc.dart';
import '../../pages/home/bloc/homeblocs.dart';
import '../../pages/home/homepage.dart';
import '../../pages/register/bloc/register_blocs.dart';
import '../../pages/register/register.dart';
import '../../pages/sign_in/bloc/sign_in_blocs.dart';
import '../../pages/sign_in/sign_in.dart';
import '../../welcome/bloc/welcome_blocs.dart';
import '../../welcome/welcome.dart';
import 'names.dart';

class AppPages {
  List<PageEntity> routes() {
    return [
      PageEntity(
          route: AppRoutes.INITIAL,
          page: Welcome(),
          bloc: (_) => WelcomeBlocs()),
      PageEntity(
          route: AppRoutes.SIGNIN,
          page: SignIn(),
          bloc: (_) => SignInBloc()),
      PageEntity(
          route: AppRoutes.REGISTER,
          page: Register(),
          bloc: (_) => RegisterBlocs()),
      PageEntity(
          route: AppRoutes.APPLICATION,
          page: Application(),
          bloc: (_) => AppBlocs()),
      PageEntity(
          route: AppRoutes.HOMEPAGE,
          page: Home(),
          bloc: (_) => HomePageBlocs()),
    ];
  }

  List<BlocProvider<dynamic>> allBlocProviders(BuildContext context) {
    return routes().map((blocEntity) {
      return BlocProvider(
        create: blocEntity.bloc,
        child: blocEntity.page,
      );
    }).toList();
  }

  MaterialPageRoute GenerateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();

        if (result.first.route == AppRoutes.INITIAL && deviceFirstOpen) {
          return MaterialPageRoute(builder: (_) => const SignIn(), settings: settings);
        }

        return MaterialPageRoute(builder: (_) => result.first.page, settings: settings);
      }
    }
    return MaterialPageRoute(builder: (_) => const SignIn());
  }
}

class PageEntity {
  String route;
  Widget page;
  BlocProviderFunction<dynamic> bloc;

  PageEntity({
    required this.route,
    required this.page,
    required this.bloc,
  });
}

typedef BlocProviderFunction<T> = T Function(BuildContext context);
