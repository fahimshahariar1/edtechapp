class RegisterStates {
  final String userName;
  final String email;
  final String pass;
  final String confirmPass;

  const RegisterStates(
      {this.userName = "",
      this.email = "",
      this.pass = "",
      this.confirmPass = ""});

  RegisterStates copyWith(
      {String? userName, String? email, String? pass, String? confirmPass}) {
    return RegisterStates(
        userName: userName ?? this.userName,
        email: email ?? this.email,
        pass: pass ?? this.pass,
        confirmPass: confirmPass ?? this.confirmPass);
  }
}
