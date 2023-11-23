import 'package:elearningapp1/pages/sign_in/bloc/sign_in_events.dart';
import 'package:elearningapp1/pages/sign_in/bloc/sign_in_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvents, SignInStates> {
  SignInBloc() :super(const SignInStates()) {

    on<EmailEvent>(_emailEvent);
    on<PassEvent>(_passEvent);
  }


  void _emailEvent(EmailEvent event, Emitter<SignInStates> emit){
    emit(state.copyWith(email: event.email));
  }
  void _passEvent(PassEvent event, Emitter<SignInStates> emit){
    emit(state.copyWith(pass: event.pass));
  }
}
