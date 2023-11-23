abstract class SignInEvents{
  const SignInEvents();
}

class EmailEvent extends SignInEvents{
  final String email;
  const EmailEvent(this.email);
}

class PassEvent extends SignInEvents{
  final String pass;
  const PassEvent(this.pass);
}