import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';


class ForgotPasswordController extends GetxController {
  var emailController = TextEditingController();
  var isEmailSent = false.obs;

  Future<void> sendVerificationEmail() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text);

      // Set status verifikasi email menjadi true
      isEmailSent.value = true;

      // Email berhasil dikirim
      Get.snackbar(
        'Email Sent',
        'Please check your inbox for the verification email.',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      // Pindah ke halaman login
      // Get.offNamed(Routes.LOGIN);
    } catch (e) {
      // Handle kesalahan pengiriman email
      print('Error sending verification email: $e');
      Get.snackbar(
        'Error',
        'An error occurred while sending the verification email. Please try again later.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
