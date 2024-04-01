import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/app/modules/home/views/home_view.dart';
import 'package:flutter_application_2/app/controllers/flutter_service.dart';
import 'package:flutter_application_2/app/modules/register/controllers/register_controller.dart';
import 'package:flutter_application_2/app/modules/verifikasi/views/verifikasi_view.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: SingleChildScrollView(
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
                      'Register',
                      style: TextStyle(
                        color: Color.fromRGBO(45, 109, 154, 1),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    TextField(
                      controller: Get.find<RegisterController>()
                          .fullnameController, // Gunakan fullnameController
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Full Name',
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
                    SizedBox(height: 5.0),
                    TextField(
                      controller: controller.usernameController,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Email',
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
                    SizedBox(height: 5.0),
                    TextFormField(
                      controller: controller.passwordController,
                      obscureText: controller.passwordVisible.value,
                      style: TextStyle(color: Colors.black),
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
                    SizedBox(height: 5.0),
                    TextFormField(
                      controller: controller.confirmPasswordController,
                      obscureText: controller.passwordVisible.value,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
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
                    SizedBox(height: 15.0),
                    ElevatedButton(
                      onPressed: () async {
                        await controller.register();
                      },
                      child: Text(
                        "Register",
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Color.fromRGBO(45, 109, 154, 1),
                            fontSize: 16.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: Text(
                            "Login here!",
                            style: TextStyle(
                              color: Color.fromRGBO(45, 109, 154, 1),
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0),
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
                  color: const Color.fromRGBO(242, 248, 255, 1),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
