import 'package:elearningapp1/common/widgets/flutterToast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/signinBLocs.dart';

class SignInController {
  final BuildContext context;

  SignInController(this.context,);

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String pass = state.pass;
        if (emailAddress.isEmpty) {
          toastInfo(msg: "Email Is Empty");
          return;
        }
        if (pass.isEmpty) {
          toastInfo(msg: "Password Is Empty");
          return;
        }

        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: emailAddress, password: pass);
          if (credential.user == null) {
            toastInfo(msg: "User Does Not Exist");
            return;
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: "Verify Your Email");
            return;
          }
          var user = credential.user;
          if (user != null) {
          } else {
            toastInfo(msg: "Not a User");
            return;
          }
        }
        on FirebaseAuthException catch (e) {
          if (e.code == "user-not-found") {
            toastInfo(msg: "User Not Found");
          }
          else if (e.code == "wrong-password") {
            toastInfo(msg: "Wrong Password");
          }
          else if (e.code == "invalid-email") {
            toastInfo(msg: "Invalid Email");
          }
        }
      }
    } catch (e) {}
  }
}
