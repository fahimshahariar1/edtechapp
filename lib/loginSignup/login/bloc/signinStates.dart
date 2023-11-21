class SignInState{

  String email;
  String pass;

  SignInState({this.email="", this.pass=""});

  SignInState copyWith({String? email, String? pass}){
    return SignInState(
      email: email??this.email,
      pass: pass??this.pass,
    );
  }
}

