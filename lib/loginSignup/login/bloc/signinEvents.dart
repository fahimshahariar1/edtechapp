abstract class SignInEvent{
  const SignInEvent();
}

class EmailEvent extends SignInEvent{
  final String email;
  EmailEvent(this.email);
}


class PassEvent extends SignInEvent{
  final String pass;
  PassEvent(this.pass);
}