

import 'package:elearningapp1/pages/application/bloc/appEvent.dart';
import 'package:elearningapp1/pages/application/bloc/appState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvent, AppState> {
  AppBlocs() : super(AppState()) {
    on<TriggerAppEvent>((event, emit) {
      emit(AppState(index: event.index));
    });
  }
}
