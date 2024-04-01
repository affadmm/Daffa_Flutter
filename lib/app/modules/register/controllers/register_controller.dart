import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterController extends GetxController {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var fullnameController = TextEditingController(); // Tambahkan controller untuk fullname
  var passwordVisible = false.obs;

  void togglePasswordVisibility() {
    passwordVisible.toggle();
  }

  Future<void> register() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
      );

      // Save user data to Firestore
      await saveUserDataToFirestore(userCredential.user!.uid);

      // Registration successful
      Get.snackbar(
        'Registration Successful',
        'Hello ${userCredential.user!.email}, Your account has been created!',
        backgroundColor: Color.fromRGBO(211, 211, 211, 1),
      );

      // Navigate to the home page or perform other actions
      Get.toNamed(Routes.HOME); // Ganti dengan rute yang sesuai
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar(
          'Registration Error',
          'The password provided is too weak.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar(
          'Registration Error',
          'The account already exists for that email',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          'Registration Error',
          'An unexpected error occurred. Please try again later.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> saveUserDataToFirestore(String userId) async {
    try {
      // Save user data to Firestore
      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'displayName': fullnameController.text, // Gunakan fullname yang diinputkan
      });
    } catch (e) {
      print('Error saving user data to Firestore: $e');
    }
  }
}