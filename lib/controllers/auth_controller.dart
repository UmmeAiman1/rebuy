// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = GoogleSignIn();

  String? username;
  RxBool isObscure = true.obs;

  
  void passwordVisibility() {
    isObscure.value = !isObscure.value;
  }

  void signUpWithEmail() async {
    
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      await userCredential.user!
          .updateDisplayName(usernameController.text.trim());
      username = usernameController.text;
      Get.offNamed('/login');
      Get.snackbar('Sign Up Succesful', 'Your Account HAs Been Created Successfully');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void loginWithEmail() async {

    try {
      await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Get.offNamed('/home');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }


  void loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(credential);
      username = googleUser.displayName;
      Get.offNamed('/home');
    } catch (e) {
      Get.snackbar('Error', e.toString());
      print(e.toString());
    }
  }

  void logout() async {
     await _googleSignIn.signOut();
    await _auth.signOut();
    Get.offAllNamed('/login');
  }
}
