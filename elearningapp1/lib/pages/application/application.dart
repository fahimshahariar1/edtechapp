import 'package:elearningapp1/pages/application/applicationWidget.dart';
import 'package:elearningapp1/pages/application/bloc/appEvent.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/appBloc.dart';
import 'bloc/appState.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, AppState>(builder: (context, state) {
      return Container(
        child: Scaffold(
          body: buildPage(index),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.index,
            onTap: (value) {
             context.read<AppBlocs>().add(TriggerAppEvent(value));
            },
            items: bottomTabs,
          ),
        ),
      );
    });
  }
}
