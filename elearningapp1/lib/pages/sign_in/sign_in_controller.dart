
import 'package:elearningapp1/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/widgets/flutter_toast.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String pass = state.pass;
        if (emailAddress.isEmpty) {
          toastInfo(msg: "Fill Your Email Address");
          return;
        }
        if (pass.isEmpty) {
          toastInfo(msg: "Fill Your Password");
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: emailAddress, password: pass);
          if (credential.user == null) {
            toastInfo(msg: "NO user Account");
            return;
          }
          if (credential.user!.emailVerified) {
            toastInfo(msg: "Email Is Not Verified");
            return;
          }

          var user = credential.user;
          if (user != null) {
            toastInfo(msg: "User Exist");
            return;
          } else {
            toastInfo(msg: "User Doesn't Exist");
            return;
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == "user-not-found") {
            toastInfo(msg: "User Not Found");
          } else if (e.code == "wrong-password") {
            toastInfo(msg: "Wrong Password");
          } else if (e.code == "invalid-email") {
            toastInfo(msg: "Email Is Invalid");
          } else if (e.code == "invalid email") {
            print("Your email is wrong");
          }
        }
      }
    } catch (e) {}
  }
}
