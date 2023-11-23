import 'package:elearningapp1/common/widgets/flutter_toast.dart';
import 'package:elearningapp1/pages/register/bloc/register_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterController{

  final BuildContext context;

  RegisterController(this.context);


  Future<void> handleEmailRegister() async {

    final state =  context.read<RegisterBlocs>().state;

    String username = state.username;
    String email = state.email;
    String password = state.password;
    String repassword = state.repassword;

    if(username.isEmpty){
      return toastInfo(msg: "User Name can not be empty");
    }
    if(email.isEmpty){
      return toastInfo(msg: "Email can not be empty");
    }
    if(password.isEmpty) {
      return toastInfo(msg: "Password can not be empty");
    }
    if(repassword.isEmpty){
      return toastInfo(msg: "Password Doesn't match");

    }

    try{

      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

      if(credential.user!=null){
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(username);
        toastInfo(msg: "An email has been sent to your email. Click on the link to activate");
        Navigator.pop(context);
      }

    }on FirebaseAuthException catch(e){
      if(e.code == "weak-password"){
        toastInfo(msg: "Your Password is weak");
      }
      else if(e.code == "email-already-in-use"){
        toastInfo(msg: "The email is already in use");
      }
      if(e.code == "invalid-email"){
        toastInfo(msg: "Your email is invalid");
      }
    }


  }


}