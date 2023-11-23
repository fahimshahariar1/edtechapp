class SignInStates {
  final String email;
  final String pass;

  const SignInStates({this.email = "", this.pass = ""});

  SignInStates copyWith({String? email, String? pass}) {
    return SignInStates(
      email: email??this.email,
      pass: pass??this.pass,
    );
  }
}
