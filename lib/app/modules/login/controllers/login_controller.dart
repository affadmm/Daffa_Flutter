import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class LoginController extends GetxController {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordVisible = false.obs;
  var isLoggedIn = false.obs;

  void togglePasswordVisibility() {
    passwordVisible.toggle();
  }

  Future<void> login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
      );

      // Retrieve user data from Firebase
      User? user = userCredential.user;
      if (user != null) {
        String displayName = await fetchDisplayNameFromFirebase(user.uid);

        // Login successful
        Get.snackbar(
          'Login Successful',
          'Hello $displayName, Welcome To My Page',
          backgroundColor: Color.fromRGBO(211, 211, 211, 1),
        );

        // Additional logic or navigation can be added here
        Get.offNamed(Routes.HOME);

      } else {
        // Handle the case where the user object is null
        Get.snackbar(
          'Login Error',
          'An unexpected error occurred. Please try again later.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

    } on FirebaseAuthException catch (e) {
      // Handle specific authentication exceptions
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        Get.snackbar(
          'Login Error',
          'Invalid username or password',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          'Login Error',
          'Please Enter Your Username And Password Correctly Or Register First',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      // Handle generic exceptions
      print(e.toString());
    }
  }


Future<String> fetchDisplayNameFromFirebase(String userId) async {
  try {
    // Mendapatkan referensi ke dokumen pengguna di Firestore
    DocumentSnapshot userSnapshot = await FirebaseFirestore.instance.collection('users').doc(userId).get();

    // Mengecek apakah dokumen pengguna ditemukan
    if (userSnapshot.exists) {
      // Mengambil data nama dari dokumen pengguna
      String displayName = userSnapshot['displayName'];

      // Mengembalikan nama pengguna
      return displayName;
    } else {
      // Jika dokumen pengguna tidak ditemukan
      return 'Unknown User';
    }
  } catch (e) {
    // Menangani kesalahan pembacaan dari Firestore
    print('Error fetching user data: $e');
    return 'Unknown User';
  }
}

}
