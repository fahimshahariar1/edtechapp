import 'package:elearningapp1/pages/register/bloc/registerevents.dart';
import 'package:elearningapp1/pages/register/bloc/registerstates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterStates> {
  RegisterBloc() : super(const RegisterStates()) {
    on<UserNameEvent>(userNameEvent);
    on<EmailEvent>(emailEvent);
    on<PassEvent>(passEvent);
    on<ConPassEvent>(conPassEvent);
  }

  void userNameEvent(UserNameEvent event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(userName: event.userName));
  }

  void emailEvent(EmailEvent event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void passEvent(PassEvent event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(pass: event.pass));
  }

  void conPassEvent(ConPassEvent event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(confirmPass: event.confirmpass));
  }
}
