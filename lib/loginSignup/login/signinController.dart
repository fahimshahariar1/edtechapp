import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/signinBLocs.dart';

class SignInController {
  final BuildContext context;

  SignInController(this.context);

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String pass = state.pass;
        if (emailAddress.isEmpty) {}
        if (pass.isEmpty) {}

        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: emailAddress, password: pass);
          if(credential.user==null){

          }if(!credential.user!.emailVerified){

          }
          var user = credential.user;
          if (user!=null){

          }
          else{

          }

        } catch (e) {}
      }
    } catch (e) {}
  }
}
