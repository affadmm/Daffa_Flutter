import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/app/modules/login/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Logo.png",
              width: 112.5,
              height: 150.0,
            ),
            Container(
              width: 390.0,
              height: 477.0,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(45, 109, 154, 1),
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    controller: controller.usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(45, 109, 154, 1),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(45, 109, 154, 1),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(45, 109, 154, 1),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Color.fromRGBO(45, 109, 154, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Obx(
                    () => TextFormField(
                      obscureText: !controller.passwordVisible.value,
                      style: TextStyle(color: Colors.black),
                      controller: controller.passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(45, 109, 154, 1),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(45, 109, 154, 1),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(45, 109, 154, 1),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_rounded,
                          color: Color.fromRGBO(45, 109, 154, 1),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.passwordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color.fromRGBO(45, 109, 154, 1),
                          ),
                          onPressed: () {
                            controller.togglePasswordVisibility();
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.FORGOT_PASSWORD); // Navigasi ke halaman forgot password
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color.fromRGBO(45, 109, 154, 1),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () async {
                      await controller.login();
                      if (controller.passwordVisible.value) {
                      }
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
                        horizontal: 141.0,
                      ),
                      backgroundColor: Color.fromRGBO(45, 109, 154, 1),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t have an account? ",
                        style: TextStyle(
                          color: Color.fromRGBO(45, 109, 154, 1),
                          fontSize: 16.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/register');
                        },
                        child: Text(
                          "Register here!",
                          style: TextStyle(
                            color: Color.fromRGBO(45, 109, 154, 1),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 20,
                    offset: Offset(5, 10),
                    spreadRadius: 0.1,
                    blurStyle: BlurStyle.normal,
                  ),
                ],
                color: Color.fromRGBO(242, 248, 255, 1),
                borderRadius: BorderRadius.circular(16.0),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
            ),
          ],
        ),
      ),
    );
  }
}
