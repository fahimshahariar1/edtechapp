import 'package:elearningapp1/pages/register/bloc/register_events.dart';
import 'package:elearningapp1/pages/register/bloc/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocs extends Bloc <RegisterEvents, RegisterStates>{

  RegisterBlocs():super(const RegisterStates()){
    on<UsernameEvent>(_usernameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<RepasswordEvent>(_repasswordEvent);
  }

  void _usernameEvent (UsernameEvent event, Emitter<RegisterStates> emit){

    emit(state.copyWith(username: event.username));
  }
  void _emailEvent (EmailEvent event, Emitter<RegisterStates> emit){

    emit(state.copyWith(email: event.email));
  }
  void _passwordEvent (PasswordEvent event, Emitter<RegisterStates> emit){

    emit(state.copyWith(password: event.password));
  }
  void _repasswordEvent (RepasswordEvent event, Emitter<RegisterStates> emit){

    emit(state.copyWith(repassword: event.repassword));
  }

}




