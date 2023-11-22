import 'package:elearningapp1/common/routes/routes.dart';
import 'package:elearningapp1/pages/login/bloc/signinBLocs.dart';
import 'package:elearningapp1/startuppage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPages {
  List<PageEntity> routes = [
    PageEntity(
        route: AppRoutes.INITIAL,
        page: StartUp(),
        bloc: BlocProvider(create: (_) => SignInBloc()))
  ];
}

class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({
    required this.route,
    required this.page,
    required this.bloc,
  });
}
