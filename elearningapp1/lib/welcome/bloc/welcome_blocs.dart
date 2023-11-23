
import 'package:elearningapp1/welcome/bloc/welcom_states.dart';
import 'package:elearningapp1/welcome/bloc/welcome_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeBlocs extends Bloc<WelcomeEvents, WelcomeStates> {
  WelcomeBlocs() : super(WelcomeStates()) {
    on<WelcomeEvents>(
      (event, emit) => emit(
        WelcomeStates(page: state.page),
      ),
    );
  }
}
