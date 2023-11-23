abstract class RegisterEvent{
  RegisterEvent();
}

class UserNameEvent extends RegisterEvent{
  final String userName;
   UserNameEvent(this.userName);
}


class EmailEvent extends RegisterEvent{
  final String email;
  EmailEvent(this.email);
}



class PassEvent extends RegisterEvent{
  final String pass;
  PassEvent(this.pass);
}


class ConPassEvent extends RegisterEvent{
  final String confirmpass;
  ConPassEvent(this.confirmpass);
}