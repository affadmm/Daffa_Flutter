import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/modules/forgot_password/controllers/forgot_password_controller.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget {
  final ForgotPasswordController controller = Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the login page
            Get.offNamed(Routes.LOGIN);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/Forgot.png',
                height: 200.0,
                width: 200.0,
              ),
            ),
            Obx(() {
              return Text(
                controller.isEmailSent.value
                    ? 'Verifikasi Email Dikirimkan!'
                    : 'Verifikasi Sekarang',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(45, 109, 154, 1),
                ),
              );
            }),
            SizedBox(height: 16.0, width: 390.0),
            Text(
              'Kami telah mengirimkan email verifikasi ke alamat email',
              style: TextStyle(
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.0,
              width: 390.0,
            ),
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
              width: 390.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => controller.sendVerificationEmail(),
                child: Text(
                  "Kirim ulang verifikasi?",
                  style: TextStyle(
                    color: Color.fromRGBO(45, 109, 154, 1),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
              width: 390.0,
            ),
            Text(
              "Silahkan periksa kotak masuk Anda dan ikuti langkah-langkah verifikasi untuk menyelesaikan proses pendaftaran. Klik login jika anda telah melakukan verifikasi.",
              style: TextStyle(
                color: Color.fromRGBO(109, 109, 109, 1),
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.LOGIN);
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 18.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 110.0,
                ),
                backgroundColor: Color.fromRGBO(45, 109, 154, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}