import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/controllers/firebase_storage.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_application_2/app/modules/home/views/home_view.dart';
import 'package:flutter_application_2/app/modules/login/views/login_view.dart';
import 'package:flutter_application_2/app/modules/register/views/register_view.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter_application_2/app/controllers/flutter_service.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyB9NhmtEnuZErBdS4qwwy4egGEp49Rreys",
        appId: "1:307231813852:android:af200509b173e11849c419",
        messagingSenderId: "307231813852",
        projectId: "flutter-with-firebase-14a96",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  await FirebaseStorageService().initialize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Saya',
      initialRoute: '/login',
      getPages: AppPages.routes,
    );
  }
}
