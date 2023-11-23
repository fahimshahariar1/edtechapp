import 'package:elearningapp1/common/widgets/flutterToast.dart';
import 'package:elearningapp1/pages/register/bloc/registerbloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterController{
  final BuildContext context;
  const RegisterController(this.context);


  Future<void> handleEmailRegister() async {
    final state = context.read<RegisterBloc>().state;

    String userName = state.userName;
    String email = state.email;
    String pass = state.pass;
    String confirmPass = state.confirmPass;

    if(userName.isEmpty){
      toastInfo(msg: "User Name Is Empty");
      return;
    }
    if(email.isEmpty){
      toastInfo(msg: "Email Is Empty");
      return;
    }
    if(pass.isEmpty){
      toastInfo(msg: "Password Is Empty");
      return;
    }
    if(confirmPass.isEmpty){
      toastInfo(msg: "Password Doesn't Match");
      return;
    }

    try{
      
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: pass);

      if(credential.user!=null){
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        toastInfo(msg: "An Email Has Been Sent To Your Email");
        Navigator.pop(context);
      }

    }on FirebaseAuthException catch(e){
      if (e.code == "weak-password"){
        toastInfo(msg: "Your Password Is Weak");
      }
      else if (e.code == "email-already-in-use"){
        toastInfo(msg: "Email Already In Use");
      }
      else if (e.code == "email-invalid"){
        toastInfo(msg: "Email Is Invalid");
      }
    }


  }


}