class RegisterStates {
  final String username, email, password, repassword;

  const RegisterStates(
      {this.username = "",
      this.email = "",
      this.password = "",
      this.repassword = ""});

  RegisterStates copyWith({String? username, email, password, repassword}) {
    return RegisterStates(
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        repassword: repassword ?? this.repassword);
  }
}
