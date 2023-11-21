
import 'package:elearningapp1/loginSignup/login/bloc/signinEvents.dart';
import 'package:elearningapp1/loginSignup/login/bloc/signinStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState>{
  SignInBloc(): super(SignInState()){
    
    on<EmailEvent>((emailEvent));

    on<PassEvent>((passEvent));
    }


  void emailEvent (EmailEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(email: event.email ));
  }


  void passEvent (PassEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(email: event.pass ));
  }


}
